//
//  ICollisionAlgorithm.h
//  PixEngine
//
//  Created by Anei Makovec on 23/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol ICollisionAlgorithm

+ (void) collisionBetween:(id)item1 and:(id)item2;

+ (BOOL) detectCollisionBetween:(id)item1 and:(id)item2;
+ (void) resolveCollisionBetween:(id)item1 and:(id)item2;

@end
