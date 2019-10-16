//
//  CompositeImage.m
//  PixEngine
//
//  Created by Anei Makovec on 29/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "CompositeImage.h"

#import "PixEngine.GUI.h"

@implementation CompositeImage

- (id) initWithImageTexture:(Texture2D *)texture sourceRectangles:(NSMutableArray *)rectangles color:(Color *)color x:(int)theX y:(int)theY width:(int)theWidth height:(int)theHeight {
    self = [super init];
    if (self != nil) {
        if ([rectangles count] == ImageLocations) {
            x = theX;
            y = theY;
            
            width = theWidth;
            height = theHeight;
            
            imageWidth = width / 3;
            imageHeight = height / 3;
            
            // init images
            for (int i = 0; i < ImageLocations; i++) {
                int gridX = i % 3;
                int gridY = i / 3;
                images[i] = [[Image alloc] initWithTexture:texture toRectangle:[Rectangle rectangleWithX: x +imageWidth * gridX y: y + imageHeight * gridY width:imageWidth height:imageHeight]];
                [images[i] setSourceRectangle:rectangles[i]];
                images[i].color = color;
            }
            
            initialized = YES;
        } else {
            initialized = NO;
        }
    }
    return self;
}

@synthesize scene;

- (void) addedToScene:(id<IScene>)theScene {
    if (initialized) {
        for (int i = 0; i < ImageLocations; i++) {
            [theScene addItem:images[i]];
        }
    }
}

- (void) removedFromScene:(id<IScene>)theScene {
    if (initialized) {
        for (int i = 0; i < ImageLocations; i++) {
            [theScene removeItem:images[i]];
        }
    }
}


- (void) dealloc {
    for (int i = 0; i < ImageLocations; i++) {
        [images[i] release];
    }
    
    [super dealloc];
}

@end
