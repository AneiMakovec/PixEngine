//
//  AnimatedImage.h
//  PixEngine
//
//  Created by Anei Makovec on 18/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PixEngine.GUI.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedImage : NSObject {
    NSMutableArray *frames;
    
    NSTimeInterval progress;
    NSTimeInterval duration;
    BOOL looping;
}

@property (nonatomic) NSTimeInterval progress;
@property (nonatomic) NSTimeInterval duration;
@property (nonatomic) BOOL looping;

- (id) initWithDuration:(NSTimeInterval)duration;

- (void) addFrame:(AnimatedImageFrame*)frame;

//- (Image*) imageAtTime:(NSTimeInterval)time;

- (BOOL) isAlive;

- (Image*) imageWithElapsedTime:(NSTimeInterval)elapsed;

- (void) updateWithElapsed:(NSTimeInterval)elapsed;

- (Image*) currentImage;

@end

NS_ASSUME_NONNULL_END
