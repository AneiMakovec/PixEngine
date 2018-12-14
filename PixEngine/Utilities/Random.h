//
//  Random.h
//  PixEngine
//
//  Created by Anei Makovec on 02/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Random : NSObject {
    
}

+ (int) int;
+ (int) intLessThan:(int)maxValue;
+ (int) intGreaterThanOrEqual:(int)minValue lessThan:(int)maxValue;
+ (float) float;
+ (double) double;

@end

NS_ASSUME_NONNULL_END
