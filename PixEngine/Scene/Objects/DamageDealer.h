//
//  DamageDealer.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Entity.h"
#import "IDamageDealer.h"

NS_ASSUME_NONNULL_BEGIN

@interface DamageDealer : Entity<IDamageDealer> {
    float damageStrength;
}

- (id) initWithHealth:(float)hp damageStrength:(float)theDamageStrength;

@end

NS_ASSUME_NONNULL_END
