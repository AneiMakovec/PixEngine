//
//  ImageButton.m
//  PixEngine
//
//  Created by Anei Makovec on 16/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "ImageButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation ImageButton

- (id) initWithInputArea:(Rectangle*)theInputArea
              background:(Image*)background {
    self = [super initWithInputArea:theInputArea];
    if (self != nil) {
        backgroundImage = [background retain];
        
        if (background) {
            self.backgroundColor = [Color white];
            self.backgroundHoverColor = [Color dimGray];
        }
        
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

- (void) dealloc {
    [backgroundImage release];
    [super dealloc];
}

@end
