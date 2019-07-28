//
//  DoubleImageButton.h
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.Objects.h"
#import "PixEngine.Scene.h"

#import "PixEngine.Control.h"

#import "Image.h"
#import "Button.h"

#import "PixEngine.Graphics.h"

NS_ASSUME_NONNULL_BEGIN

/*
 YOU MUST INITIALIZE THE TOUCH PANEL HELPER BEFORE USING BUTTONS!
 */
@interface DoubleImageButton : Button {
    Image *pressedImage;
    Image *notPressedImage;
}

- (id) initWithInputArea:(Rectangle*)theInputArea notPressedBackground:(Texture2D*)notPressedBackground pressedBackground:(Texture2D*)pressedBackground;

@property (nonatomic, retain) Image *pressedImage;
@property (nonatomic, retain) Image *notPressedImage;

- (void) setPressedBackground:(Texture2D*)background;
- (void) setNotPressedBackground:(Texture2D*)background;

@end

NS_ASSUME_NONNULL_END
