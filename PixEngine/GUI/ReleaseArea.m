//
//  ReleaseArea.m
//  PixEngine
//
//  Created by Anei Makovec on 29/10/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "ReleaseArea.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation ReleaseArea

- (id) initWithInputArea:(Rectangle*)theInputArea {
    self = [super init];
    if (self != nil) {
        inputArea = [theInputArea retain];
        enabled = YES;
    }
    return self;
}

@synthesize wasReleased;


- (void) updateWithInverseView:(Matrix *)inverseView  {
    if (!enabled) {
        wasReleased = NO;
        return;
    }
    
    TouchCollection *touches = [TouchPanelHelper getState];
    if (!touches) {
        return;
    }
    
    wasReleased = NO;
    
    for (TouchLocation *touch in touches) {
        Vector2* touchInScene = [Vector2 transform:touch.position with:inverseView];
        
        if ((touchInScene.x >= inputArea.x && touchInScene.x <= inputArea.x + inputArea.width && touchInScene.y >= inputArea.y && touchInScene.y <= inputArea.y + inputArea.height) && touch.state != TouchLocationStateInvalid) {
            
            if (touch.state == TouchLocationStateReleased) {
                wasReleased = YES;
            }
        }
    }
}

@end
