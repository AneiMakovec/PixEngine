//
//  ReleaseArea.h
//  PixEngine
//
//  Created by Anei Makovec on 29/10/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Control.h"

#import "ITouchUpdate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReleaseArea : NSObject<ITouchUpdate> {
    Rectangle *inputArea;
    BOOL enabled;
    
    BOOL wasReleased;
}

@property (nonatomic) BOOL enabled;
@property (nonatomic, readonly) BOOL wasReleased;

- (id) initWithInputArea:(Rectangle*)theInputArea;

@end

NS_ASSUME_NONNULL_END
