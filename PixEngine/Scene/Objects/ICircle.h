//
//  ICircle.h
//  PixEngine
//
//  Created by Matej Jan on 2.11.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IParticle.h"
#import "IRotatable.h"

@protocol ICircle <IParticle, IRotatable, IAngularMass>

@end
