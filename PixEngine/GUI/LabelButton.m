//
//  LabelButton.m
//  PixEngine
//
//  Created by Anei Makovec on 16/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "LabelButton.h"

#import "Retronator.Xni.Framework.Input.Touch.h"

@implementation LabelButton

- (id) initWithInputArea:(Rectangle*)theInputArea
                    font:(SpriteFont*)font
                    text:(NSString*)text {
    self = [super initWithInputArea:theInputArea];
    if (self != nil) {
        label = [[Label alloc] initWithFont:font
                                       text:text
                                   position:[Vector2 vectorWithX:inputArea.x + inputArea.width/2 y:inputArea.y + inputArea.height/2]];
        label.verticalAlign = VerticalAlignMiddle;
        label.horizontalAlign = HorizontalAlignCenter;

        self.labelColor = [Color white];
        self.labelHoverColor = [Color gray];
    }
    return self;
}

@synthesize label;
@synthesize labelColor, labelHoverColor;

- (void) setLabelColor:(Color *)value {
    [value retain];
    [labelColor release];
    labelColor = value;
    label.color = labelColor;
}

- (void) setText:(NSString *)text {
    label.text = text;
}

- (void) addedToScene:(id <IScene>)theScene {
    // Add child items to scene.
    [theScene addItem:label];
}

- (void) removedFromScene:(id <IScene>)theScene {
    // Remove child items.
    [theScene removeItem:label];
}

- (void) updateWithInverseView:(Matrix *)inverseView  {
    BOOL wasDown = isDown;
    
    [super updateWithInverseView:inverseView];
    
    if (isDown && !wasDown) {
        label.color = labelHoverColor;
    } else if (!isDown && wasDown) {
        label.color = labelColor;
    }
}

- (void) dealloc {
    [label release];
    [super dealloc];
}

@end
