//
//  ILifetime.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PixEngine.Scene.Objects.classes.h"

@protocol ILifetime <NSObject>

@property (nonatomic, retain) LifeTime *lifetime;

@end
