//
//  TextureStretcher.m
//  KnightsOfThePixelTable
//
//  Created by Anei Makovec on 28/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "TextureStretcher.h"

@implementation TextureStretcher


- (id) initFromWidth:(float)widthFrom fromHeight:(float)heightFrom toWidth:(float)widthTo toHeight:(float)heightTo xOffset:(float)theXoffset yOffset:(float)theYoffset {
    self = [super init];
    if (self != nil) {
        fromWidth = widthFrom;
        fromHeight = heightFrom;
        toWidth = widthTo;
        toHeight = heightTo;
        xOffset = theXoffset;
        yOffset = theYoffset;
    }
    return self;
}

- (void) scaleVector:(Vector2 *)theVector {
    float scaleX = toWidth / fromWidth;
    float scaleY = toHeight / fromHeight;
    Matrix *scale = [Matrix createScale:[Vector3 vectorWithX:scaleX y:scaleY z:1]];
    
    [theVector transformWith:scale];
}

- (void) scalePosition:(Vector2 *)thePosition {
    [self scaleVector:thePosition];
    [thePosition add:[Vector2 vectorWithX:xOffset y:yOffset]];
}

- (void) scaleRectangle:(Rectangle *)theRect {
    Vector2 *position = [[Vector2 alloc] initWithX:theRect.x y:theRect.y];
    Vector2 *size = [[Vector2 alloc] initWithX:theRect.width y:theRect.height];
    
    [self scalePosition:position];
    [self scaleVector:size];
    
    theRect.x = position.x;
    theRect.y = position.y;
    theRect.width = size.x;
    theRect.height = size.y;
    
    [position release];
    [size release];
}

- (void) scaleSize:(Vector2 *)theSize {
    [self scaleVector:theSize];
}

- (float) scaleX:(float)theX {
    return (theX * toWidth) / fromWidth + xOffset;
}

- (float) scaleY:(float)theY {
    return (theY * toHeight) / fromHeight + yOffset;
}




+ (void) scaleVector:(Vector2 *)theVector fromWidth:(float)widthFrom fromHeight:(float)heightFrom toWidth:(float)widthTo toHeight:(float)heightTo {
    float scaleX = widthTo / widthFrom;
    float scaleY = heightTo / heightFrom;
    Matrix *scale = [Matrix createScale:[Vector3 vectorWithX:scaleX y:scaleY z:1]];
    
    [theVector transformWith:scale];
}

+ (float) scaleX:(float)theX fromWidth:(float)widthFrom toWidth:(float)widthTo {
    return (theX * widthTo) / widthFrom;
}

+ (float) scaleY:(float)theY fromHeight:(float)heightFrom toHeight:(float)heightTo {
    return (theY * heightTo) / heightFrom;
}

@end
