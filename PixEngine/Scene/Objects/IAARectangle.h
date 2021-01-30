//
//  IAARectangle.h
//  PixEngine
//
//  Created by Matej Jan on 2.11.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IMovable.h"
#import "IMass.h"
#import "IAARectangleCollider.h"

@protocol IAARectangle <IMovable, IMass, IAARectangleCollider>

@end
