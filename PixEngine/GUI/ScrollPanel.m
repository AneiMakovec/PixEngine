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
        blocked = NO;
        prevPosition = [[Vector2 alloc] init];
        itemSize = size;
        
        invisibleItems = [[NSMutableArray alloc] init];
    }
    return self;
}

@synthesize enabled;

- (void) addItem:(nonnull id)item {
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
                [items removeObject:posItem];
                [scene removeItem:posItem];
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
                [scene addItem:posItem];
                [items addObject:posItem];
                [invisibleItems removeObject:posItem];
                break;
            }
        }
    }
}

- (void) updateWithInverseView:(Matrix *)inverseView {
    if (!enabled) {
        return;
    }
    
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }
    
    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if (!blocked) {
            if ((touchInScene.x >= area.x && touchInScene.x <= area.x + area.width && touchInScene.y >= area.y && touchInScene.y <= area.y + area.height) && touch.state != TouchLocationStateInvalid) {
                
                if (touch.state == TouchLocationStatePressed) {
                    pressedID = touch.identifier;
                    
                    // remember only y position
                    prevPosition.y = touchInScene.y;
                    
                    blocked = YES;
                }
            }
        }
        
        // Only act to the touch that started the push.
        if (touch.identifier == pressedID) {
            if (touch.state == TouchLocationStateMoved) {
                // move the items
                float moveDist = (touchInScene.y - prevPosition.y);
                for (id item in items) {
                    id<IPosition> posItem = [item conformsToProtocol:@protocol(IPosition)] ? item : nil;
                    
                    if (posItem) {
                        posItem.position.y += moveDist;
                    }
                }
                
                for (id item in invisibleItems) {
                    id<IPosition> posItem = [item conformsToProtocol:@protocol(IPosition)] ? item : nil;
                    
                    if (posItem) {
                        posItem.position.y += moveDist;
                    }
                }
                
                prevPosition.y = touchInScene.y;
            } else if (touch.state == TouchLocationStateReleased) {
                blocked = NO;
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
