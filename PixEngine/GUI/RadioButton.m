//
//  RadioButton.m
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "RadioButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation RadioButton

- (id) initWithInputArea:(Rectangle*)theInputArea isDown:(BOOL)down {
    self = [super init];
    if (self != nil) {
        inputArea = [theInputArea retain];
        enabled = YES;
        isDown = down;
    }
    return self;
}

@synthesize inputArea, enabled, isDown, scene;

- (void) addedToScene:(id <IScene>)theScene {
    // Override in child implementations
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Override in child implementations
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
//    if (!enabled) {
//        return;
//    }
    
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }
    
    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if ((touchInScene.x >= inputArea.x && touchInScene.x <= inputArea.x + inputArea.width && touchInScene.y >= inputArea.y && touchInScene.y <= inputArea.y + inputArea.height) && touch.state != TouchLocationStateInvalid) {
            if (touch.state == TouchLocationStatePressed) {
                pressedID = touch.identifier;
            }
            
            // Only act to the touch that started the push.
            if (touch.identifier == pressedID && touch.state == TouchLocationStateReleased) {
                if (isDown && enabled)
                    isDown = NO;
                else if (!isDown)
                    isDown = YES;
            }
        }
    }
}

- (void) reset {
    isDown = NO;
}

- (void) dealloc {
    [inputArea release];
    [super dealloc];
}

@end
