//
//  ImageLabelRadioButton.h
//  PixEngine
//
//  Created by Anei Makovec on 01/08/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.Objects.h"
#import "PixEngine.Scene.h"

#import "PixEngine.Control.h"

#import "Label.h"
#import "Image.h"

#import "PixEngine.Graphics.h"

#import "RadioButton.h"

NS_ASSUME_NONNULL_BEGIN

/*
 YOU MUST INITIALIZE THE TOUCH PANEL HELPER BEFORE USING BUTTONS!
 */

@interface ImageLabelRadioButton : RadioButton {
    Image *backgroundImage;
    Label *label;
    
    Color *labelColor, *labelHoverColor, *backgroundColor, *backgroundHoverColor;
}

- (id) initWithInputArea:(Rectangle*)theInputArea background:(Texture2D*)background font:(SpriteFont *)font text:(NSString *)text isDown:(BOOL)down;

@property (nonatomic, retain) Image *backgroundImage;
@property (nonatomic, retain) Label *label;

@property (nonatomic, retain) Color *labelColor, *labelHoverColor, *backgroundColor, *backgroundHoverColor;

- (void) setBackground:(Texture2D*)background;

- (void) setText:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
