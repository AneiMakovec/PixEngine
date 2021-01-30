//
//  SceneEventArgs.h
//  PixEngine
//
//  Created by Matej Jan on 23.11.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SceneEventArgs : EventArgs {
    id item;
}

- (id) initWithItem:(id)theItem;
+ (SceneEventArgs*) eventArgsWithItem:(id)theItem;

@property (nonatomic, readonly) id item;

@end

NS_ASSUME_NONNULL_END
