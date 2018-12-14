//
//  AnimatedSpriteFrame.h
//  PixEngine
//
//  Created by Anei Makovec on 26/10/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PixEngine.Graphics.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedSpriteFrame : NSObject {
    Sprite *sprite;
    NSTimeInterval start;
}

- (id) initWithSprite:(Sprite*)theSprite start:(NSTimeInterval)theStart;
+ (id) frameWithSprite:(Sprite*)theSprite start:(NSTimeInterval)theStart;

@property (nonatomic, readonly) Sprite *sprite;
@property (nonatomic, readonly) NSTimeInterval start;

@end

NS_ASSUME_NONNULL_END
