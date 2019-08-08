//
//  ICustomMovable.h
//  PixEngine
//
//  Created by Anei Makovec on 08/08/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IPosition.h"

@protocol ICustomMovable <IPosition>

- (void) moveX:(float)distance;
- (void) moveY:(float)distance;

@end
