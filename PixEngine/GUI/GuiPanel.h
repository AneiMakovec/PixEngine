//
//  UIPanel.h
//  PixEngine
//
//  Created by Anei Makovec on 13/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.h"
#import "PixEngine.Scene.Objects.h"
#import "PixEngine.GUI.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface GuiPanel : NSObject<ISceneUser> {
    id<IScene> scene;
    
    NSMutableArray *items;
}

@property (nonatomic, retain) NSMutableArray *items;

@end

NS_ASSUME_NONNULL_END
