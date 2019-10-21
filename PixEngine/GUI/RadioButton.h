//
//  RadioButton.h
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
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

@interface RadioButton : NSObject <IButton, ISceneUser> {
    id<IScene> scene;
    
    Rectangle *inputArea;
    BOOL enabled;
    
    BOOL isDown;
    int pressedID;
}

@property (nonatomic) BOOL isDown;

- (id) initWithInputArea:(Rectangle*)theInputArea isDown:(BOOL)down;

- (void) reset;

- (void) setScaleUniform:(float)scale;

@end

NS_ASSUME_NONNULL_END
