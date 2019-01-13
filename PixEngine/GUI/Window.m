//
//  Window.m
//  PixEngine
//
//  Created by Anei Makovec on 13/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "Window.h"

#import "PixEngine.GUI.h"

@implementation Window

- (id) initWithScene:(id)theScene camera:(Matrix*)camera x:(int)x y:(int)y width:(int)width height:(int)height closeButtonBakground:(Texture2D *)backButtonBackground font:(SpriteFont *)font {
    if (width < 50)
        width = 50;
    
    if (height < 50)
        height = 50;
    
    self = [super initWithScene:theScene camera:camera x:x y:y width:width height:height];
    if (self != nil) {
        close = [[Button alloc] initWithInputArea:[Rectangle rectangleWithX:x+width-15 y:5 width:10 height:10] background:backButtonBackground font:font text:@"X"];
        
        [items addObject:close];
    }
    return self;
}


- (void) updateWithGameTime:(GameTime *)gameTime {
    [super updateWithGameTime:gameTime];
    
    if (close.wasReleased) {
        [scene removeItem:self];
    }
}

@end
