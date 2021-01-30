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

- (id) initWithInputArea:(Rectangle*)theInputArea notPressedBackground:(Image*)notPressedBackground pressedBackground:(Image*)pressedBackground;

@property (nonatomic, retain) Image *pressedImage;
@property (nonatomic, retain) Image *notPressedImage;

- (void) setLayerDepth:(float)depth;

@end

NS_ASSUME_NONNULL_END
