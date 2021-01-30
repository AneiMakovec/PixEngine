//
//  LabelButton.h
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

#import "Button.h"

NS_ASSUME_NONNULL_BEGIN

/*
 YOU MUST INITIALIZE THE TOUCH PANEL HELPER BEFORE USING BUTTONS!
 */
@interface LabelButton : Button {
    Label *label;
    
    Color *labelColor, *labelHoverColor;
}

- (id) initWithInputArea:(Rectangle*)theInputArea font:(SpriteFont *)font text:(NSString *)text;

@property (nonatomic, retain) Label *label;

@property (nonatomic, retain) Color *labelColor, *labelHoverColor;

- (void) setText:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
