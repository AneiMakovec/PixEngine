//
//  Scene.m
//  PixEngine
//
//  Created by Anei Makovec on 26/10/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "Scene.h"

@implementation Scene

- (id) init {
    self = [super init];
    if (self != nil) {
        items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addItem:(id)item {
    [items addObject:item];
}

- (void) remove:(id)item {
    [items removeObject:item];
}

- (void) clear {
    [items removeAllObjects];
}

- (NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id  _Nullable [])buffer count:(NSUInteger)len {
    return [items countByEnumeratingWithState:state objects:buffer count:len];
}

- (void) dealloc {
    [items release];
    [super dealloc];
}

@end
