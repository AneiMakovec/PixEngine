//
//  DoubleImageButton.m
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "DoubleImageButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation DoubleImageButton

- (id) initWithInputArea:(Rectangle*)theInputArea notPressedBackground:(Image*)notPressedBackground pressedBackground:(Image*)pressedBackground {
    self = [super initWithInputArea:theInputArea];
    if (self != nil) {
        pressedImage = [pressedBackground retain];
        notPressedImage = [notPressedBackground retain];
    }
    return self;
}

@synthesize pressedImage, notPressedImage;

- (void) setScaleUniform:(float)scale {
    [super setScaleUniform:scale];
    
    [pressedImage setScaleUniform:scale];
    [notPressedImage setScaleUniform:scale];
}

- (void) setLayerDepth:(float)depth {
    pressedImage.layerDepth = depth;
    notPressedImage.layerDepth = depth;
}

- (void) setPressedImage:(Image *)image {
    [pressedImage release];
    pressedImage = [image retain];
}

- (void) setNotPressedImage:(Image *)image {
    [notPressedImage release];
    notPressedImage = [image retain];
}

- (void) addedToScene:(id <IScene>)theScene {
    // Add child items to scene.
    [theScene addItem:notPressedImage];
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Remove child items.
    [theScene removeItem:pressedImage];
    [theScene removeItem:notPressedImage];
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
    BOOL wasDown = isDown;
    
    [super updateWithInverseView:inverseView];
    
    if (isDown && !wasDown) {
        // pressed
        [scene removeItem:notPressedImage];
        [scene addItem:pressedImage];
    } else if (!isDown && wasDown) {
        // released
        [scene removeItem:pressedImage];
        [scene addItem:notPressedImage];
    }
}

- (void) dealloc {
    [pressedImage release];
    [notPressedImage release];
    
    [super dealloc];
}

@end
