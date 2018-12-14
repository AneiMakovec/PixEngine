//
//  IHalfPlaneCollider.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PixEngine.Math.classes.h"

@protocol IHalfPlaneCollider <NSObject>

@property (nonatomic, readonly) HalfPlane *halfPlane;

@end
