//
//  DoubleImageLabelButton.h
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
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
@interface DoubleImageLabelButton : Button {
    Image *pressedImage;
    Image *notPressedImage;
    Label *label;
}

- (id) initWithInputArea:(Rectangle*)theInputArea notPressedBackground:(Image*)notPressedBackground pressedBackground:(Image*)pressedBackground font:(SpriteFont *)font text:(NSString *)text;

@property (nonatomic, retain) Image *pressedImage;
@property (nonatomic, retain) Image *notPressedImage;
@property (nonatomic, retain) Label *label;

- (void) setText:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
