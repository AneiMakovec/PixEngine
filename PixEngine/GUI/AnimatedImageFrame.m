//
//  AnimatedImageFrame.m
//  PixEngine
//
//  Created by Anei Makovec on 18/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "AnimatedImageFrame.h"
#import "PixEngine.GUI.h"

@implementation AnimatedImageFrame

- (id) initWithImage:(Image *)theImage start:(NSTimeInterval)theStart
{
    self = [super init];
    if (self != nil) {
        image = [theImage retain];
        start = theStart;
    }
    return self;
}

+ (id) frameWithImage:(Image *)theImage start:(NSTimeInterval)theStart {
    return [[[self alloc] initWithImage:theImage start:theStart] autorelease];
}

@synthesize image;
@synthesize start;

- (void) setLayerDepth:(float)layerDepth {
    image.layerDepth = layerDepth;
}

- (void) setScaleUniform:(float)scale {
    [image setScaleUniform:scale];
}

- (void) dealloc
{
    [image release];
    [super dealloc];
}

@end
