//
//  Random.m
//  PixEngine
//
//  Created by Anei Makovec on 02/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "Random.h"

@implementation Random

+ (void) initialize {
    // Seed with current time.
    srandom(time(NULL));
}

+ (int) int {
    return random();
}

+ (int) intLessThan:(int)maxValue {
    return random() % maxValue;
}

+ (int) intGreaterThanOrEqual:(int)minValue lessThan:(int)maxValue {
    return minValue + random() % (maxValue - minValue);
}

+ (float) float {
    return (float)random() / (float)RAND_MAX;
}

+ (double) double {
    return (double)random() / (double)RAND_MAX;
}

@end
