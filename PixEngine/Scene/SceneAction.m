//
//  SceneAction.m
//  PixEngine
//
//  Created by Anei Makovec on 03/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "SceneAction.h"

@implementation SceneAction

@synthesize operation, item;

+ (SceneAction*) actionWithOperation:(SceneOperation)theOperation item:(id)theItem {
    SceneAction *action = [[[SceneAction alloc] init] autorelease];
    action.operation = theOperation;
    action.item = theItem;
    return action;
}

- (void) dealloc
{
    [item release];
    [super dealloc];
}


@end
