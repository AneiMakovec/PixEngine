//
//  TouchImage.m
//  PixEngine
//
//  Created by Anei Makovec on 25/06/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "TouchImage.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation TouchImage

- (id) initWithTexture:(Texture2D *)theTexture position:(Vector2 *)thePosition {
    self = [super initWithTexture:theTexture position:thePosition];
    if (self != nil) {
        enabled = NO;
    }
    return self;
}

@synthesize wasReleased;

- (id) initWithTexture:(Texture2D *)theTexture toRectangle:(Rectangle *)rectangle {
    self = [super initWithTexture:theTexture position:[Vector2 vectorWithX:rectangle.x y:rectangle.y]];
    if (self != nil) {
        enabled = YES;
        
        drawRectangle = [rectangle retain];
    }
    return self;
}


- (void) updateWithInverseView:(Matrix *)inverseView {
    if (!enabled) {
        return;
    }
    
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }
    
    isTouched = NO;
    wasTouched = NO;
    wasReleased = NO;
    
    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if ((touchInScene.x >= drawRectangle.x && touchInScene.x <= drawRectangle.x + drawRectangle.width && touchInScene.y >= drawRectangle.y && touchInScene.y <= drawRectangle.y + drawRectangle.height) && touch.state != TouchLocationStateInvalid) {
            if (touch.state == TouchLocationStatePressed) {
                pressedID = touch.identifier;
                wasTouched = YES;
            }
            
            // Only act to the touch that started the push.
            if (touch.identifier == pressedID) {
                if (touch.state == TouchLocationStateReleased) {
                    wasReleased = YES;
                } else {
                    isTouched = YES;
                }
            }
        }
    }
}

@end
