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
              background:(Texture2D*)background {
    self = [super initWithInputArea:theInputArea];
    if (self != nil) {
        backgroundImage = [[Image alloc] initWithTexture:background toRectangle:inputArea];
        
        if (background) {
            self.backgroundColor = [Color white];
            self.backgroundHoverColor = [Color dimGray];
        }
        
    }
    return self;
}

@synthesize backgroundImage;
@synthesize backgroundColor, backgroundHoverColor;

- (void) setBackgroundColor:(Color *)value {
    [value retain];
    [backgroundColor release];
    backgroundColor = value;
    backgroundImage.color = backgroundColor;
}

- (void) setBackground:(Texture2D *)background {
    [backgroundImage setTexture:background];
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
