//
//  UIPanel.m
//  PixEngine
//
//  Created by Anei Makovec on 13/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "GuiPanel.h"

#import "PixEngine.GUI.h"

@implementation GuiPanel

- (id) initWithCamera:(Matrix*)camera {
    self = [super init];
    if (self != nil) {
        inversedCamera = [[Matrix invert:camera] retain];
        
        items = [[NSMutableArray alloc] init];
    }
    return self;
}

@synthesize scene, items;

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

- (void) dealloc {
    [inversedCamera release];
    [items release];
    
    [super dealloc];
}

@end
