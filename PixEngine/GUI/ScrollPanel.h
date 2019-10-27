//
//  ScrollPanel.h
//  PixEngine
//
//  Created by Anei Makovec on 31/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Control.h"

#import "GuiPanel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ScrollPanel : GuiPanel {
    Rectangle *area;
    BOOL enabled;
    BOOL scrolling;
    BOOL wasScrolling;
    
    int pressedID;
    int itemSize;
    
    Vector2 *prevPosition;
    
    NSMutableArray *invisibleItems;
    
    id<IPosition> firstItem;
    id<IPosition> lastItem;
}

@property (nonatomic) BOOL enabled;
@property (nonatomic, readonly) BOOL scrolling;

- (id) initWithArea:(Rectangle *)theArea itemSize:(int)size;

- (void) addItem:(nonnull id)item;
- (void) removeItem:(nonnull id)item;

- (void) removeAllItems;

@end

NS_ASSUME_NONNULL_END
