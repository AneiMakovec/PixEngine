//
//  MovableImage.m
//  PixEngine
//
//  Created by Anei Makovec on 25/06/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "MovableImage.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation MovableImage

- (id) initWithTexture:(Texture2D *)theTexture position:(Vector2 *)thePosition {
    self = [super initWithTexture:theTexture position:thePosition];
    if (self != nil) {
        defaultPosition = [[Vector2 alloc] init];
        defaultPosition.x = thePosition.x;
        defaultPosition.y = thePosition.y;
        
        distance = [[Vector2 alloc] init];
    }
    return self;
}

- (id) initWithTexture:(Texture2D *)theTexture toRectangle:(Rectangle *)rectangle {
    self = [super initWithTexture:theTexture toRectangle:rectangle];
    if (self != nil) {
        defaultPosition = [[Vector2 alloc] init];
        defaultPosition.x = rectangle.x;
        defaultPosition.y = rectangle.y;
        
        distance = [[Vector2 alloc] init];
    }
    return self;
}

- (void) updateWithInverseView:(Matrix *)inverseView {
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }
    
    wasReleased = NO;

    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if ((touchInScene.x >= drawRectangle.x && touchInScene.x <= drawRectangle.x + drawRectangle.width && touchInScene.y >= drawRectangle.y && touchInScene.y <= drawRectangle.y + drawRectangle.height) && touch.state != TouchLocationStateInvalid) {
            if (touch.state == TouchLocationStatePressed) {
                pressedID = touch.identifier;
            }
            
            // Only act to the touch that started the push.
            if (touch.identifier == pressedID) {
                if (touch.state == TouchLocationStateReleased) {
                    wasReleased = YES;
                } else {
                    // calc distance to from touch to origin
                    distance.x = position.x - touchInScene.x;
                    distance.y = position.y - touchInScene.y;
                    
                    // move image
                    position.x += distance.x;
                    position.y += distance.y;
                }
            }
        }
    }
}


- (void) resetToDefaultPosition {
    position.x = defaultPosition.x;
    position.y = defaultPosition.y;
    
    distance.x = 0;
    distance.y = 0;
}

- (void) snapToPosition:(Vector2 *)thePosition {
    position.x = thePosition.x;
    position.y = thePosition.y;
}

@end
