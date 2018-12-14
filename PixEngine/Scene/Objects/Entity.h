//
//  Entity.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IMovable.h"
#import "IDamageable.h"

NS_ASSUME_NONNULL_BEGIN

@interface Entity : NSObject<IMovable, IDamageable> {
    Vector2 *position;
    Vector2 *velocity;
    float maxHealthPoints;
    float currentHealthPoints;
}

- (id) initWithHealth:(float)hp;

@end

NS_ASSUME_NONNULL_END
