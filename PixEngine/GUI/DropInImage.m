//
//  DropInImage.m
//  PixEngine
//
//  Created by Anei Makovec on 06/08/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "DropInImage.h"

@implementation DropInImage

- (BOOL) canDropItem:(id<IPosition>)item {
    if (drawToRectangle) {
        if (item.position.x >= drawRectangle.x && item.position.x <= drawRectangle.x + drawRectangle.width && item.position.y >= drawRectangle.y && item.position.y <= drawRectangle.y + drawRectangle.height) {
            return YES;
        } else {
            return NO;
        }
    } else {
        // implement size of item
        return NO;
    }
}

@end
