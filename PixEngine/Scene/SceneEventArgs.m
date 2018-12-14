//
//  SceneEventArgs.m
//  PixEngine
//
//  Created by Anei Makovec on 03/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "SceneEventArgs.h"

@implementation SceneEventArgs

- (id) initWithItem:(id)theItem;
{
    self = [super init];
    if (self != nil) {
        item = theItem;
    }
    return self;
}

+ (SceneEventArgs*) eventArgsWithItem:(id)theItem {
    return [[[SceneEventArgs alloc] initWithItem:theItem] autorelease];
}

@synthesize item;

@end
