//
//  AnimatedSprite.m
//  PixEngine
//
//  Created by Matej Jan on 27.10.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import "AnimatedSprite.h"
#import "PixEngine.Graphics.h"

@implementation AnimatedSprite

@synthesize duration;
@synthesize looping;
@synthesize progress;

NSArray *frameStartSort;

+ (void) initialize {
    NSSortDescriptor *frameStartSortDescriptor = [[[NSSortDescriptor alloc] initWithKey:@"start" ascending:YES] autorelease];
    
    frameStartSort = [[NSArray arrayWithObject:frameStartSortDescriptor] retain];
}

- (id) initWithDuration:(NSTimeInterval)theDuration
{
    self = [super init];
    if (self != nil) {
        frames = [[NSMutableArray alloc] init];
        duration = theDuration;
        progress = 0;
    }
    return self;
}

- (void) setLoopingWithDuration:(NSTimeInterval)theDuration {
    looping = YES;
    duration = theDuration;
}

- (void) addFrame:(AnimatedSpriteFrame *)frame {
    [frames addObject:frame];
    [frames sortUsingDescriptors:frameStartSort];
}

- (Sprite *) spriteAtTime:(NSTimeInterval)time {
    if (looping) {
        int loops = floorf(time / duration);
        time -= loops * duration;
    }
    
    if (time >= duration) {
        // Animation has finished.
        return nil;
    }
    
    for (int i = 0; i < [frames count] - 1; i++) {
        AnimatedSpriteFrame *nextFrame = (AnimatedSpriteFrame*)[frames objectAtIndex:i + 1];
        if (nextFrame.start > time) {
            AnimatedSpriteFrame *frame = (AnimatedSpriteFrame*)[frames objectAtIndex:i];
            return frame.sprite;
        }
    }
    
    // Return last frame.
    AnimatedSpriteFrame *frame = (AnimatedSpriteFrame*)[frames objectAtIndex:[frames count] - 1];
    return frame.sprite;
}


// new code
-(BOOL) isAlive {
    if (!looping) {
        return progress < duration;
    } else {
        return YES;
    }
}

- (void) reset {
    progress = 0;
}

- (Sprite*) spriteWithElapsedTime:(NSTimeInterval)elapsed {
    [self updateWithElapsed:elapsed];
    return [self currentSprite];
}

- (void) updateWithElapsed:(NSTimeInterval)elapsed {
    progress += elapsed;
    
    if (progress >= duration) {
        if (looping)
            progress = 0;
        else
            progress = duration;
    }
}

- (Sprite*) currentSprite {
    if (!looping && progress >= duration) {
        // animation ended
        return nil;
    }
    
    for (int i = 0; i < [frames count] - 1; i++) {
        AnimatedSpriteFrame *nextFrame = (AnimatedSpriteFrame*)[frames objectAtIndex:i + 1];
        if (nextFrame.start > progress) {
            AnimatedSpriteFrame *frame = (AnimatedSpriteFrame*)[frames objectAtIndex:i];
            return frame.sprite;
        }
    }
    
    // Return last frame.
    AnimatedSpriteFrame *frame = (AnimatedSpriteFrame*)[frames objectAtIndex:[frames count] - 1];
    return frame.sprite;
}

- (void) dealloc
{
    [frames release];
    [super dealloc];
}

@end
