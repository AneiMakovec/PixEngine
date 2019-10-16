//
//  CompositeImage.h
//  PixEngine
//
//  Created by Anei Makovec on 29/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.GUI.classes.h"
#import "PixEngine.Scene.Objects.h"

NS_ASSUME_NONNULL_BEGIN

@interface CompositeImage : NSObject<ISceneUser> {
    id<IScene> scene;
    
    int x;
    int y;
    int width;
    int height;
    int imageWidth;
    int imageHeight;
    
    Image *images[ImageLocations];
    BOOL initialized;
}

- (id) initWithImageTexture:(Texture2D *)texture sourceRectangles:(NSMutableArray *)rectangles color:(Color *)color x:(int)theX y:(int)theY width:(int)theWidth height:(int)theHeight;

@end

NS_ASSUME_NONNULL_END
