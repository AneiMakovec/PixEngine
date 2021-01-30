//
//  DynamicLabel.h
//  PixEngine
//
//  Created by Anei Makovec on 27/10/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.GUI.classes.h"
#import "GuiPanel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DynamicLabel : GuiPanel {
    Vector2 *startingPosition;
    float startX;
    float startY;
    
    float width;
    
    float lineWidth;
    float lineSpacing;
    float charWidth;
    float charHeight;
    
    float space;
}

- (id) initWithPosition:(Vector2 *)position lineWidth:(float)lWidth lineSpacing:(float)lSpacing charWidth:(float)cWidth charHeight:(float)cHeight  spaceWidth:(float)wSpace;

- (void) addLabel:(Label *)label;

- (void) reset;

@end

NS_ASSUME_NONNULL_END
