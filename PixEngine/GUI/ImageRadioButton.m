//
//  ImageRadioButton.m
//  PixEngine
//
//  Created by Anei Makovec on 22/10/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "ImageRadioButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation ImageRadioButton

- (id) initWithInputArea:(Rectangle*)theInputArea background:(Image*)background isDown:(BOOL)down {
    self = [super initWithInputArea:theInputArea isDown:down];
    if (self != nil) {
        backgroundImage = [background retain];
        
        if (background) {
            self.backgroundColor = [[Color white] retain];
            self.backgroundHoverColor = [[Color dimGray] retain];
        }
        
        if (isDown)
            backgroundImage.color = backgroundHoverColor;
        
    }
    return self;
}

@synthesize backgroundImage;
@synthesize backgroundColor, backgroundHoverColor;

- (void) setScaleUniform:(float)scale {
    [super setScaleUniform:scale];
    
    [backgroundImage setScaleUniform:scale];
}

- (void) setBackgroundColor:(Color *)value {
    [value retain];
    [backgroundColor release];
    backgroundColor = value;
    backgroundImage.color = backgroundColor;
}

- (void) setBackgroundHoverColor:(Color *)value {
    [value retain];
    [backgroundHoverColor release];
    backgroundHoverColor = value;
    
    if (isDown)
        backgroundImage.color = backgroundHoverColor;
}

- (void) setBackgroundImage:(Image *)image {
    [backgroundImage release];
    backgroundImage = [image retain];
}

- (void) addedToScene:(id <IScene>)theScene {
    // Add child items to scene.
    [theScene addItem:backgroundImage];
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Remove child items.
    [theScene removeItem:backgroundImage];
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
    BOOL wasDown = isDown;
    
    [super updateWithInverseView:inverseView];
    
    if (isDown && !wasDown) {
        backgroundImage.color = backgroundHoverColor;
    } else if (!isDown && wasDown) {
        backgroundImage.color = backgroundColor;
    }
}

- (void) reset {
    if (isDown) {
        [super reset];
        backgroundImage.color = backgroundColor;
    }
}

- (void) dealloc {
    [backgroundImage release];
    [backgroundColor release];
    [backgroundHoverColor release];
    [super dealloc];
}


@end
