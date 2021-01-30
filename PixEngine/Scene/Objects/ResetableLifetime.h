//
//  ResetableLifetime.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Lifetime.h"

NS_ASSUME_NONNULL_BEGIN

@interface ResetableLifetime : Lifetime

- (void) reset;

@end

NS_ASSUME_NONNULL_END
