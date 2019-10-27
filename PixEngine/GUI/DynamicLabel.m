//
//  DynamicLabel.m
//  PixEngine
//
//  Created by Anei Makovec on 27/10/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "DynamicLabel.h"

#import "PixEngine.GUI.h"

@implementation DynamicLabel

- (id) initWithPosition:(Vector2 *)position lineWidth:(int)lWidth lineSpacing:(int)lSpacing charWidth:(int)cWidth charHeight:(int)cHeight {
    self = [super init];
    if (self != nil) {
        startingPosition = [position retain];
        startX = position.x;
        startY = position.y;
        
        width = 0;
        
        lineWidth = lWidth;
        lineSpacing = lSpacing;
        charWidth = cWidth;
        charHeight = cHeight;
    }
    
    return self;
}

- (void) addLabel:(Label *)label {
    if ((width + [label.text length] * charWidth) > lineWidth) {
        width = 0;
        startingPosition.x = startX;
        startingPosition.y += lineSpacing;
    }
    
    label.position.x = startingPosition.x;
    label.position.y = startingPosition.y;
    
    int dist = (int) ([label.text length] * charWidth) + charWidth;
    width += dist;
    
    startingPosition.x += dist;
    
    [self addItemToScene:label];
}

- (void) reset {
    for (id item in items) {
        [scene removeItem:item];
    }
    
    startingPosition.x = startX;
    startingPosition.y = startY;
}

@end
