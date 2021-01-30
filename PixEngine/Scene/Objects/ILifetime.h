//
//  ILifetime.h
//  PixEngine
//
//  Created by Matej Jan on 27.10.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PixEngine.Scene.Objects.classes.h"

@protocol ILifetime <NSObject>

@property (nonatomic, retain) LifeTime *lifetime;

@end
