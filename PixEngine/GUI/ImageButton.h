//
//  ImageButton.h
//  PixEngine
//
//  Created by Anei Makovec on 16/01/2019.
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
@interface ImageButton : Button {
    Image *backgroundImage;
    
    Color *backgroundColor, *backgroundHoverColor;
}

- (id) initWithInputArea:(Rectangle*)theInputArea background:(Texture2D*)background;

@property (nonatomic, readonly) Image *backgroundImage;

@property (nonatomic, retain) Color *backgroundColor, *backgroundHoverColor;

- (void) setBackground:(Texture2D*)background;

@end

NS_ASSUME_NONNULL_END
