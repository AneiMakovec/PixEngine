//
//  AnimatedSprite.h
//  PixEngine
//
//  Created by Anei Makovec on 26/10/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
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
