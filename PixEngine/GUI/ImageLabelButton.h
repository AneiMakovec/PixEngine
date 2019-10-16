//
//  ImageLabelButton.h
//  PixEngine
//
//  Created by Anei Makovec on 16/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.Objects.h"
#import "PixEngine.Scene.h"

#import "PixEngine.Control.h"

#import "Label.h"
#import "Image.h"

#import "PixEngine.Graphics.h"

#import "Button.h"

NS_ASSUME_NONNULL_BEGIN

/*
 YOU MUST INITIALIZE THE TOUCH PANEL HELPER BEFORE USING BUTTONS!
 */
@interface ImageLabelButton : Button {
    Image *backgroundImage;
    Label *label;

    Color *labelColor, *labelHoverColor, *backgroundColor, *backgroundHoverColor;
}

- (id) initWithInputArea:(Rectangle*)theInputArea background:(Image*)background font:(SpriteFont *)font text:(NSString *)text;

@property (nonatomic, retain) Image *backgroundImage;
@property (nonatomic, retain) Label *label;

@property (nonatomic, retain) Color *labelColor, *labelHoverColor, *backgroundColor, *backgroundHoverColor;

- (void) setText:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
