//
//  IRectangleCollider.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IPosition.h"
#import "IRotation.h"
#import "IRectangleSize.h"

@protocol IRectangleCollider <IPosition, IRotation, IRectangleSize>

@end
