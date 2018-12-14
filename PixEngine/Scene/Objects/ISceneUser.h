//
//  ISceneUser.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PixEngine.Scene.classes.h"

@protocol ISceneUser <NSObject>

@property (nonatomic, retain) id<IScene> scene;

@optional
- (void) addedToScene:(id<IScene>)scene;
- (void) removedFromScene:(id<IScene>)scene;

@end
