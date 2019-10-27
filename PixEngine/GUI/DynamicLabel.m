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

- (id) initWithPosition:(Vector2 *)position lineWidth:(float)lWidth lineSpacing:(float)lSpacing charWidth:(float)cWidth charHeight:(float)cHeight spaceWidth:(float)wSpace {
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
        
        space = wSpace;
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
    
    float dist = (float) [label.text length] * charWidth + space;
    width += dist;
    
    startingPosition.x += dist;
    
    [self addItemToScene:label];
}

- (void) reset {
    for (id item in items) {
        [scene removeItem:item];
    }
    
    [items removeAllObjects];
    
    startingPosition.x = startX;
    startingPosition.y = startY;
    
    width = 0;
}

@end
