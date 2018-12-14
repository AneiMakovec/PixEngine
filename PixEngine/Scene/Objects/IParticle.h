//
//  IParticle.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IMovable.h"
#import "IMass.h"
#import "IParticleCollider.h"

@protocol IParticle <IMovable, IMass, IParticleCollider>

@end
