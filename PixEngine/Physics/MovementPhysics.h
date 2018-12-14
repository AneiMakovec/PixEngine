//
//  MovementPhysics.h
//  PixEngine
//
//  Created by Anei Makovec on 23/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovementPhysics : NSObject {
    
}

+ (void) simulateMovementOn:(id)item withElapsed:(float)elapsed;

@end

NS_ASSUME_NONNULL_END
