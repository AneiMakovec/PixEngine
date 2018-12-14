//
//  ICustomCollider.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "System.h"

@protocol ICustomCollider <NSObject>

@optional
- (BOOL) collidingWithItem:(id)item;
- (void) collidedWithItem:(id)item;

@end
