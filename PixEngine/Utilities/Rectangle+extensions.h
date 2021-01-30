//
//  Rectangle+extensions.h
//  PixEngine
//
//  Created by Matej Jan on 29.10.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle (Extensions)

- (BOOL) containsVector:(Vector2*) value;

@end

NS_ASSUME_NONNULL_END
