//
//  SceneEventArgs.h
//  PixEngine
//
//  Created by Anei Makovec on 03/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
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
