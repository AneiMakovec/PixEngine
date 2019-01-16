//
//  Window.h
//  PixEngine
//
//  Created by Anei Makovec on 13/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.GUI.classes.h"
#import "GuiPanel.h"


NS_ASSUME_NONNULL_BEGIN

@interface Window : GuiPanel {
    ImageButton *close;
}

- (id) initWithScene:(id<IScene>)theScene camera:(Matrix*)camera x:(int)x y:(int)y width:(int)width height:(int)weight closeButtonBakground:(Texture2D*)backButtonBackground;

@end

NS_ASSUME_NONNULL_END
