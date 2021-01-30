//
//  Entity.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IDamageable.h"

NS_ASSUME_NONNULL_BEGIN

@interface Entity : NSObject<IDamageable> {
    int maxHealthPoints;
    int currentHealthPoints;
}

- (id) initWithHealth:(int)hp;

@end

NS_ASSUME_NONNULL_END
