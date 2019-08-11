//
//  ScrollPanel.m
//  PixEngine
//
//  Created by Anei Makovec on 31/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "ScrollPanel.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation ScrollPanel

- (id) initWithArea:(Rectangle *)theArea itemSize:(int)size {
    self = [super init];
    if (self != nil) {
        area = [theArea retain];
        enabled = YES;
        scrolling = NO;
        wasScrolling = NO;
        prevPosition = [[Vector2 alloc] init];
        itemSize = size;
        
        invisibleItems = [[NSMutableArray alloc] init];
    }
    return self;
}

@synthesize enabled, scrolling;

- (void) addItem:(nonnull id)item {
    if ([invisibleItems count] == 0)
        firstItem = item;
    else
        lastItem = item;
    
    [invisibleItems addObject:item];
}

- (void) updateWithGameTime:(GameTime *)gameTime {
    // check if items are out of bound
    for (id item in items) {
        id<IPosition> posItem = [item conformsToProtocol:@protocol(IPosition)] ? item : nil;
        
        if (posItem) {
            if (posItem.position.y < area.y - itemSize || posItem.position.y > area.y + area.height) {
                // set item invisible
                [invisibleItems addObject:posItem];
                [self removeItemFromScene:posItem];
                break;
            }
        }
    }
    
    // check if items are visible
    for (id item in invisibleItems) {
        id<IPosition> posItem = [item conformsToProtocol:@protocol(IPosition)] ? item : nil;
        
        if (posItem) {
            if (posItem.position.y > area.y - itemSize && posItem.position.y < area.y + area.height) {
                // set item visible
                [self addItemToScene:posItem];
                [invisibleItems removeObject:posItem];
                break;
            }
        }
    }
}

- (void) updateWithInverseView:(Matrix *)inverseView {
    if (!enabled)
        return;
    
    if (wasScrolling) {
        wasScrolling = NO;
        scrolling = NO;
    }
    
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }
    
    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if (!scrolling) {
            if ((touchInScene.x >= area.x && touchInScene.x <= area.x + area.width && touchInScene.y >= area.y && touchInScene.y <= area.y + area.height) && touch.state != TouchLocationStateInvalid) {
                
                // check if player touched the panel area
                if (touch.state == TouchLocationStatePressed) {
                    pressedID = touch.identifier;
                    
                    // remember current position
                    prevPosition.x = touchInScene.x;
                    prevPosition.y = touchInScene.y;
                }
                
                // now check if the player decided to scroll
                if (touch.identifier == pressedID && touch.state == TouchLocationStateMoved && fabsf(touchInScene.y - prevPosition.y) > 5) {
                    scrolling = YES;
                }
            }
        } else {
            // Only act to the touch that started the push.
            if (touch.identifier == pressedID) {
                if (touch.state == TouchLocationStateMoved) {
                    
                    // check if first or last item are not exiting area
                    if (firstItem.position.y <= area.y && lastItem.position.y >= area.y) {
                        // calculate move distance
                        float moveDist = touchInScene.y - prevPosition.y;
                        
                        // check if moving distance is too great for first item
                        float diff = area.y - firstItem.position.y;
                        if (diff < moveDist)
                            moveDist = diff;
                        
                        // check if moving distance is too great for last item
                        diff = area.y - lastItem.position.y;
                        if (diff > moveDist)
                            moveDist = diff;
                        
                        // move visible items
                        for (id item in items) {
                            id<ICustomMovable> moveItem = [item conformsToProtocol:@protocol(ICustomMovable)] ? item : nil;
                            if (moveItem) {
                                [moveItem moveY:moveDist];

                                // skip checking for protocol IPosition to avoid double movements
                                continue;
                            }
                            
                            id<IPosition> posItem = [item conformsToProtocol:@protocol(IPosition)] ? item : nil;
                            if (posItem) {
                                posItem.position.y += moveDist;
                            }
                        }
                        
                        // move invisible items
                        for (id item in invisibleItems) {
                            id<ICustomMovable> moveItem = [item conformsToProtocol:@protocol(ICustomMovable)] ? item : nil;
                            if (moveItem) {
                                [moveItem moveY:moveDist];
                                // skip checking for protocol IPosition to avoid double movements
                                continue;
                            }
                            
                            id<IPosition> posItem = [item conformsToProtocol:@protocol(IPosition)] ? item : nil;
                            if (posItem) {
                                posItem.position.y += moveDist;
                            }
                        }
                    }
                    
                    prevPosition.y = touchInScene.y;
                } else if (touch.state == TouchLocationStateReleased) {
                    wasScrolling = YES;
                }
            }
        }
    }
}


- (void) dealloc {
    [area release];
    [prevPosition release];
    [invisibleItems release];
    
    [super dealloc];
}

@end
