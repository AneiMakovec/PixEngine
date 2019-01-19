//
//  AnimatedImageFrame.h
//  PixEngine
//
//  Created by Anei Makovec on 18/01/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PixEngine.GUI.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedImageFrame : NSObject {
    Image *image;
    NSTimeInterval start;
}

- (id) initWithImage:(Image*)theImage start:(NSTimeInterval)theStart;
+ (id) frameWithImage:(Image*)theImage start:(NSTimeInterval)theStart;

@property (nonatomic, readonly) Image *image;
@property (nonatomic, readonly) NSTimeInterval start;

@end

NS_ASSUME_NONNULL_END
