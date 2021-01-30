//
//  Button.h
//  PixEngine
//
//  Created by Matej Jan on 21.12.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.Objects.h"
#import "PixEngine.Scene.h"

#import "PixEngine.Control.h"

#import "IButton.h"

NS_ASSUME_NONNULL_BEGIN

/*
    YOU MUST INITIALIZE THE TOUCH PANEL HELPER BEFORE USING BUTTONS!
*/
@interface Button : NSObject <IButton, ISceneUser> {
    id<IScene> scene;

    Rectangle *inputArea;
    BOOL enabled;
    
    BOOL isDown;
    BOOL wasPressed;
    BOOL wasReleased;
    int pressedID;
}

- (id) initWithInputArea:(Rectangle*)theInputArea;

@property (nonatomic, readonly) BOOL wasPressed;
@property (nonatomic, readonly) BOOL wasReleased;

- (void) setScaleUniform:(float)scale;

@end

NS_ASSUME_NONNULL_END
