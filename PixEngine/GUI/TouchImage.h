//
//  TouchImage.h
//  PixEngine
//
//  Created by Anei Makovec on 25/06/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Image.h"
#import "PixEngine.Control.h"

NS_ASSUME_NONNULL_BEGIN

@interface TouchImage : Image {
    BOOL enabled;
    
    BOOL wasTouched;
    BOOL wasReleased;
    BOOL isTouched;
    
    int pressedID;
}

- (void) updateWithInverseView:(Matrix *)inverseView;

@end

NS_ASSUME_NONNULL_END
