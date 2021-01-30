//
//  ImageRadioButton.h
//  PixEngine
//
//  Created by Anei Makovec on 22/10/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.Objects.h"
#import "PixEngine.Scene.h"

#import "PixEngine.Control.h"

#import "Image.h"
#import "RadioButton.h"

#import "PixEngine.Graphics.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageRadioButton : RadioButton {
    Image *backgroundImage;
    
    Color *backgroundColor, *backgroundHoverColor;
}

- (id) initWithInputArea:(Rectangle*)theInputArea background:(Image*)background isDown:(BOOL)down;

@property (nonatomic, retain) Image *backgroundImage;

@property (nonatomic, retain) Color *backgroundColor, *backgroundHoverColor;

@end

NS_ASSUME_NONNULL_END
