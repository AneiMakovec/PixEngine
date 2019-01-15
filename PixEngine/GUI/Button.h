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

#import "Label.h"
#import "Image.h"

#import "PixEngine.Graphics.h"

NS_ASSUME_NONNULL_BEGIN

/*
    YOU MUST INITIALIZE THE TOUCH PANEL HELPER BEFORE USING BUTTONS!
*/
@interface Button : NSObject <ISceneUser> {
    id<IScene> scene;
    
    Image *backgroundImage;
    Label *label;
    
    Rectangle *inputArea;
    BOOL enabled;
    
    BOOL isDown;
    BOOL wasPressed;
    BOOL wasReleased;
    int pressedID;
    
    Color *labelColor, *labelHoverColor, *backgroundColor, *backgroundHoverColor;
}

- (id) initWithInputArea:(Rectangle*)theInputArea background:(Texture2D*)background font:(SpriteFont *)font text:(NSString *)text;

@property (nonatomic, readonly) Rectangle *inputArea;
@property (nonatomic) BOOL enabled;

@property (nonatomic, readonly) BOOL isDown;
@property (nonatomic, readonly) BOOL wasPressed;
@property (nonatomic, readonly) BOOL wasReleased;

@property (nonatomic, readonly) Image *backgroundImage;
@property (nonatomic, readonly) Label *label;

@property (nonatomic, retain) Color *labelColor, *labelHoverColor, *backgroundColor, *backgroundHoverColor;

- (void) updateWithInverseView:(Matrix*)inverseView;

- (void) setBackground:(Texture2D*)background;

@end

NS_ASSUME_NONNULL_END
