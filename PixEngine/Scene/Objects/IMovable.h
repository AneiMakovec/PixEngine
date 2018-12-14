//
//  IMovable.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IPosition.h"
#import "IVelocity.h"

@protocol IMovable <IPosition, IVelocity>

@end
