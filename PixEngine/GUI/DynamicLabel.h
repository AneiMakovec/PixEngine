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
    int startX;
    int startY;
    
    int width;
    
    int lineWidth;
    int lineSpacing;
    int charWidth;
    int charHeight;
}

- (id) initWithPosition:(Vector2 *)position lineWidth:(int)lWidth lineSpacing:(int)lSpacing charWidth:(int)cWidth charHeight:(int)cHeight;

- (void) addLabel:(Label *)label;

- (void) reset;

@end

NS_ASSUME_NONNULL_END
