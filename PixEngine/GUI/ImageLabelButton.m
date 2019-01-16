//
//  ImageLabelButton.m
//  PixEngine
//
//  Created by Anei Makovec on 16/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "ImageLabelButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation ImageLabelButton

- (id) initWithInputArea:(Rectangle*)theInputArea
              background:(Texture2D*)background
                    font:(SpriteFont*)font
                    text:(NSString*)text
{
    self = [super initWithInputArea:theInputArea];
    if (self != nil) {
        backgroundImage = [[Image alloc] initWithTexture:background toRectangle:inputArea];
        label = [[Label alloc] initWithFont:font
                                       text:text
                                   position:[Vector2 vectorWithX:inputArea.x + inputArea.width/2 y:inputArea.y + inputArea.height/2]];
        label.verticalAlign = VerticalAlignMiddle;
        label.horizontalAlign = HorizontalAlignCenter;
        
        if (background) {
            self.backgroundColor = [Color white];
            self.backgroundHoverColor = [Color dimGray];
        }
        
        self.labelColor = [Color black];
        self.labelHoverColor = [Color white];
    }
    return self;
}

@synthesize backgroundImage, label;
@synthesize labelColor, labelHoverColor, backgroundColor, backgroundHoverColor;

- (void) setLabelColor:(Color *)value {
    [value retain];
    [labelColor release];
    labelColor = value;
    label.color = labelColor;
}

- (void) setBackgroundColor:(Color *)value {
    [value retain];
    [backgroundColor release];
    backgroundColor = value;
    backgroundImage.color = backgroundColor;
}

- (void) setBackground:(Texture2D *)background {
    [backgroundImage setTexture:background];
}

- (void) setText:(NSString *)text {
    label.text = text;
}

- (void) addedToScene:(id <IScene>)theScene {
    // Add child items to scene.
    [theScene addItem:backgroundImage];
    [theScene addItem:label];
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Remove child items.
    [theScene removeItem:backgroundImage];
    [theScene removeItem:label];
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
    BOOL wasDown = isDown;
    
    [super updateWithInverseView:inverseView];
    
    if (isDown && !wasDown) {
        backgroundImage.color = backgroundHoverColor;
        label.color = labelHoverColor;
    } else if (!isDown && wasDown) {
        backgroundImage.color = backgroundColor;
        label.color = labelColor;
    }
}

- (void) dealloc
{
    [backgroundImage release];
    [label release];
    [super dealloc];
}

@end
