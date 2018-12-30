//
//  AnimatedSprite.h
//  PixEngine
//
//  Created by Matej Jan on 27.10.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PixEngine.Graphics.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedSprite : NSObject {
    NSMutableArray *frames;
    NSTimeInterval duration;
    BOOL looping;
}

@property (nonatomic) NSTimeInterval duration;
@property (nonatomic) BOOL looping;

- (id) initWithDuration:(NSTimeInterval)duration;

- (void) addFrame:(AnimatedSpriteFrame*)frame;

- (Sprite*) spriteAtTime:(NSTimeInterval)time;

@end

NS_ASSUME_NONNULL_END
