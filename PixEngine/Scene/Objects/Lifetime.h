//
//  Lifetime.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Lifetime : NSObject {
    NSTimeInterval start;
    NSTimeInterval duration;
    
    NSTimeInterval progress;
}

- (id) initWithStart:(NSTimeInterval)theStart duration:(NSTimeInterval)theDuration;

@property (nonatomic, readonly) NSTimeInterval start;
@property (nonatomic, readonly) NSTimeInterval duration;
@property (nonatomic, readonly) NSTimeInterval progress;
@property (nonatomic, readonly) float percentage;
@property (nonatomic, readonly) BOOL isAlive;

- (void) updateWithGameTime:(GameTime *)gameTime;

@end

NS_ASSUME_NONNULL_END
