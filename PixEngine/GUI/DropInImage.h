//
//  DropInImage.h
//  PixEngine
//
//  Created by Anei Makovec on 06/08/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Image.h"

NS_ASSUME_NONNULL_BEGIN

@interface DropInImage : Image

- (BOOL) canDropItem:(id<IPosition>)item;

@end

NS_ASSUME_NONNULL_END
