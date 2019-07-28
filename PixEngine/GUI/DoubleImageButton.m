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

- (id) initWithInputArea:(Rectangle*)theInputArea notPressedBackground:(Texture2D *)notPressedBackground pressedBackground:(Texture2D *)pressedBackground {
    self = [super initWithInputArea:theInputArea];
    if (self != nil) {
        pressedImage = [[Image alloc] initWithTexture:pressedBackground toRectangle:inputArea];
        notPressedImage = [[Image alloc] initWithTexture:notPressedBackground toRectangle:inputArea];
    }
    return self;
}

@synthesize pressedImage, notPressedImage;

- (void) setPressedBackground:(Texture2D *)background {
    [pressedImage setTexture:background];
}

- (void) setNotPressedBackground:(Texture2D *)background {
    [notPressedImage setTexture:background];
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
