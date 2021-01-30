//
//  AnimatedImage.m
//  PixEngine
//
//  Created by Anei Makovec on 18/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "AnimatedImage.h"
#import "PixEngine.GUI.h"

@implementation AnimatedImage

@synthesize duration;
@synthesize looping;
@synthesize progress;

NSArray *imageFrameStartSort;

+ (void) initialize {
    NSSortDescriptor *frameStartSortDescriptor = [[[NSSortDescriptor alloc] initWithKey:@"start" ascending:YES] autorelease];
    
    imageFrameStartSort = [[NSArray arrayWithObject:frameStartSortDescriptor] retain];
}

- (id) initWithDuration:(NSTimeInterval)theDuration {
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

- (void) addFrame:(AnimatedImageFrame *)frame {
    [frames addObject:frame];
    [frames sortUsingDescriptors:imageFrameStartSort];
}

//- (Image *) imageAtTime:(NSTimeInterval)time {
//    if (looping) {
//        int loops = floorf(time / duration);
//        time -= loops * duration;
//    }
//
//    if (time >= duration) {
//        // Animation has finished.
//        return nil;
//    }
//
//    for (int i = 0; i < [frames count] - 1; i++) {
//        AnimatedImageFrame *nextFrame = (AnimatedImageFrame*)[frames objectAtIndex:i + 1];
//        if (nextFrame.start > time) {
//            AnimatedImageFrame *frame = (AnimatedImageFrame*)[frames objectAtIndex:i];
//            return frame.image;
//        }
//    }
//
//    // Return last frame.
//    AnimatedImageFrame *frame = (AnimatedImageFrame*)[frames objectAtIndex:[frames count] - 1];
//    return frame.image;
//}

-(BOOL) isAlive {
    if (!looping) {
        return progress < duration;
    } else {
        return YES;
    }
}

- (Image*) imageWithElapsedTime:(NSTimeInterval)elapsed {
    [self updateWithElapsed:elapsed];
    return [self currentImage];
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

- (Image*) currentImage {
    if (!looping && progress >= duration) {
        // animation ended
        return nil;
    }
    
    for (int i = 0; i < [frames count] - 1; i++) {
        AnimatedImageFrame *nextFrame = (AnimatedImageFrame*)[frames objectAtIndex:i + 1];
        if (nextFrame.start > progress) {
            AnimatedImageFrame *frame = (AnimatedImageFrame*)[frames objectAtIndex:i];
            return frame.image;
        }
    }
    
    // Return last frame.
    AnimatedImageFrame *frame = (AnimatedImageFrame*)[frames objectAtIndex:[frames count] - 1];
    return frame.image;
}

- (void) setLayerDepth:(float)layerDepth {
    for (AnimatedImageFrame *frame in frames) {
        [frame setLayerDepth:layerDepth];
    }
}

- (void) setScaleUniform:(float)scale {
    for (AnimatedImageFrame *frame in frames) {
        [frame setScaleUniform:scale];
    }
}

- (void) dealloc {
    [frames release];
    [super dealloc];
}

@end
