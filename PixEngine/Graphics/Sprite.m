//
//  Sprite.m
//  PixEngine
//
//  Created by Anei Makovec on 26/10/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "Sprite.h"

@implementation Sprite

@synthesize texture;
@synthesize sourceRectangle;
@synthesize origin;

- (void) dealloc {
    [texture release];
    [sourceRectangle release];
    [origin release];
    [super dealloc];
}

@end
