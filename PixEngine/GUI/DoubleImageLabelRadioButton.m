//
//  DoubleImageLabelRadioButton.m
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "DoubleImageLabelRadioButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation DoubleImageLabelRadioButton

- (id) initWithInputArea:(Rectangle*)theInputArea notPressedBackground:(Image *)notPressedBackground pressedBackground:(Image *)pressedBackground font:(SpriteFont *)font text:(NSString *)text isDown:(BOOL)down {
    self = [super initWithInputArea:theInputArea isDown:down];
    if (self != nil) {
        isDown = down;
        
        pressedImage = [pressedBackground retain];
        notPressedImage = [notPressedBackground retain];
        
        label = [[Label alloc] initWithFont:font
                                       text:text
                                   position:[Vector2 vectorWithX:inputArea.x + inputArea.width/2 y:inputArea.y + inputArea.height/2]];
        label.verticalAlign = VerticalAlignMiddle;
        label.horizontalAlign = HorizontalAlignCenter;
    }
    return self;
}

@synthesize pressedImage, notPressedImage, label;

- (void) setPressedImage:(Image *)image {
    [pressedImage release];
    pressedImage = [image retain];
}

- (void) setNotPressedImage:(Image *)image {
    [notPressedImage release];
    notPressedImage = [image retain];
}

- (void) setText:(NSString *)text {
    label.text = text;
}

- (void) setScaleUniform:(float)scale {
    [super setScaleUniform:scale];
    
    [pressedImage setScaleUniform:scale];
    [notPressedImage setScaleUniform:scale];
    [label setScaleUniform:scale];
    
    label.position.x = inputArea.x + inputArea.width/2;
    label.position.y = inputArea.y + inputArea.height/2;
}

- (void) addedToScene:(id <IScene>)theScene {
    // Add child items to scene.
    if (isDown)
        [theScene addItem:pressedImage];
    else
        [theScene addItem:notPressedImage];
    
    [theScene addItem:label];
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Remove child items.
    [theScene removeItem:pressedImage];
    [theScene removeItem:notPressedImage];
    [theScene removeItem:label];
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
    BOOL wasDown = isDown;
    
    [super updateWithInverseView:inverseView];
    
    if (isDown && !wasDown) {
        // pressed
        label.position.y++;
        [scene removeItem:notPressedImage];
        [scene addItem:pressedImage];
    } else if (!isDown && wasDown) {
        // released
        label.position.y--;
        [scene removeItem:pressedImage];
        [scene addItem:notPressedImage];
    }
}

- (void) reset {
    if (isDown) {
        [super reset];
        label.position.y--;
        [scene removeItem:pressedImage];
        [scene addItem:notPressedImage];
    }
}

- (void) dealloc {
    [pressedImage release];
    [notPressedImage release];
    [label release];
    
    [super dealloc];
}

@end
