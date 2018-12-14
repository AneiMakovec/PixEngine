//
//  Lifetime.m
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "Lifetime.h"

@implementation Lifetime

- (id) initWithStart:(NSTimeInterval)theStart duration:(NSTimeInterval)theDuration
{
    self = [super init];
    if (self != nil) {
        start = theStart;
        duration = theDuration;
    }
    return self;
}

@synthesize start, duration, progress;

- (float) percentage {
    return (progress/duration);
}

- (BOOL) isAlive {
    return progress < duration;
}

- (void) updateWithGameTime:(GameTime *)gameTime {
    if (self.isAlive) {
        progress += gameTime.elapsedGameTime;
        if (!self.isAlive) {
            progress = duration;
        }
    }
}

@end
