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

- (id) init {
    self = [super init];
    if (self != nil) {
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
    // Override method in child implementations.
}

- (void) updateWithInverseView:(Matrix *)inverseView {
    // Override method in child implementations.
}

- (void) dealloc {
    [items release];
    
    [super dealloc];
}

@end
