//
//  MovableImage.h
//  PixEngine
//
//  Created by Anei Makovec on 25/06/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Image.h"
#import "PixEngine.Control.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovableImage : Image {
    Vector2 *defaultPosition;
    Vector2 *distance;
    
    int pressedID;
    
    BOOL wasReleased;
}

- (void) updateWithInverseView:(Matrix *)inverseView;

- (void) resetToDefaultPosition;

- (void) snapToPosition:(Vector2 *)thePosition;

@end

NS_ASSUME_NONNULL_END
