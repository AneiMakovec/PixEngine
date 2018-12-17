//
//  SimpleScene.h
//  PixEngine
//
//  Created by Anei Makovec on 03/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.classes.h"

#import "IScene.h"

NS_ASSUME_NONNULL_BEGIN

/**
 A simple scene implementation that just uses an array as its backing.
 */
@interface SimpleScene : GameComponent <IScene> {
    // A list of items currently on the scene.
    NSMutableArray *items;
    
    // A list of adds and removes to be executed on the scene.
    NSMutableArray *actions;
    
    Event *itemAdded;
    Event *itemRemoved;
}

@end

NS_ASSUME_NONNULL_END
