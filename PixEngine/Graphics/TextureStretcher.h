//
//  TextureStretcher.h
//  KnightsOfThePixelTable
//
//  Created by Anei Makovec on 28/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TextureStretcher : NSObject {
    float fromWidth;
    float fromHeight;
    float toWidth;
    float toHeight;
    float xOffset;
    float yOffset;
}

- (id) initFromWidth:(float)widthFrom fromHeight:(float)heightFrom toWidth:(float)widthTo toHeight:(float)heightTo xOffset:(float)theXoffset yOffset:(float)theYoffset;

- (void) scalePosition:(Vector2 *)thePosition;

- (void) scaleRectangle:(Rectangle *)theRect;

- (void) scaleSize:(Vector2 *)theSize;

- (float) scaleX:(float)theX;

- (float) scaleY:(float)theY;




+ (void) scaleVector:(Vector2 *)theVector fromWidth:(float)widthFrom fromHeight:(float)heightFrom toWidth:(float)widthTo toHeight:(float)heightTo;

+ (float) scaleX:(float)theX fromWidth:(float)widthFrom toWidth:(float)widthTo;

+ (float) scaleY:(float)theY fromHeight:(float)heightFrom toHeight:(float)heightTo;

@end

NS_ASSUME_NONNULL_END
