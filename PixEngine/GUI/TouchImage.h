//
//  TouchImage.h
//  PixEngine
//
//  Created by Anei Makovec on 25/06/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Image.h"
#import "ITouchUpdate.h"
#import "PixEngine.Control.h"

NS_ASSUME_NONNULL_BEGIN

@interface TouchImage : Image<ITouchUpdate> {
    BOOL enabled;
    
    BOOL wasTouched;
    BOOL wasReleased;
    BOOL isTouched;
    
    int pressedID;
}

@property (nonatomic, readonly) BOOL isTouched;
@property (nonatomic, readonly) BOOL wasReleased;
@property (nonatomic) BOOL enabled;

@end

NS_ASSUME_NONNULL_END
