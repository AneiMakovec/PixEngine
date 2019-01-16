//
//  Button.m
//  PixEngine
//
//  Created by Matej Jan on 21.12.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import "Button.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation Button

- (id) initWithInputArea:(Rectangle*)theInputArea {
    self = [super init];
    if (self != nil) {
        inputArea = [theInputArea retain];
        enabled = YES;
    }
    return self;
}

@synthesize inputArea, enabled, isDown, wasPressed, wasReleased, scene;

- (void) addedToScene:(id <IScene>)theScene {
    // Override in child implementations
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Override in child implementations
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
    if (!enabled) {
        return;
    }
    
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }

    isDown = NO;
    wasPressed = NO;
    wasReleased = NO;
    
    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if ((touchInScene.x >= inputArea.x && touchInScene.x <= inputArea.x + inputArea.width && touchInScene.y >= inputArea.y && touchInScene.y <= inputArea.y + inputArea.height) && touch.state != TouchLocationStateInvalid) {
            if (touch.state == TouchLocationStatePressed) {
                pressedID = touch.identifier;
                wasPressed = YES;
            }
            
            // Only act to the touch that started the push.
            if (touch.identifier == pressedID) {
                if (touch.state == TouchLocationStateReleased) {
                    wasReleased = YES;
                } else {
                    isDown = YES;
                }
            }
        }
    }
}

- (void) dealloc {
    [inputArea release];
    [super dealloc];
}

@end
