//
//  UIPanel.m
//  PixEngine
//
//  Created by Anei Makovec on 13/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "GuiPanel.h"

#import "Retronator.Xni.Framework.Content.h"
#import "Retronator.Xni.Framework.Content.Pipeline.Processors.h"

#import "PixEngine.GUI.h"

@implementation GuiPanel

- (id) initWithScene:(id<IScene>)theScene camera:(Matrix*)camera x:(int)x y:(int)y width:(int)width height:(int)height {
    self = [super init];
    if (self != nil) {
        scene = theScene;
        
        content = [[ContentManager alloc] init];
        
        display = [[Rectangle alloc] initWithX:x y:y width:width height:height];
        inversedCamera = [[Matrix invert:camera] retain];
        
        items = [[NSMutableArray alloc] init];
    }
    return self;
}

@synthesize scene, display, items;

- (void) addedToScene:(id<IScene>)scene {
    // Add child items to scene
    for (id item in items) {
        [scene addItem:item];
    }
}

- (void) removedFromScene:(id<IScene>)scene {
    // Remove child items from scene
    for (id item in items) {
        [scene removeItem:item];
    }
}

- (void) updateWithGameTime:(GameTime *)gameTime {
    // Update the buttons
    for (id item in items) {
        Button *button = [item isKindOfClass:[Button class]] ? item : nil;
        if (button) {
            [button updateWithInverseView:inversedCamera];
        }
    }
}

@end
