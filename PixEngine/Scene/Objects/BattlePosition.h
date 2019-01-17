//
//  BattlePosition.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IParticleCollider.h"

NS_ASSUME_NONNULL_BEGIN

@interface BattlePosition : NSObject<IParticleCollider> {
    Vector2 *position;
    float radius;
}

- (id) initWithRadius:(float)theRadius;

- (id) initWithPosition:(Vector2*)thePosition radius:(float)theRadius;

@end

NS_ASSUME_NONNULL_END
