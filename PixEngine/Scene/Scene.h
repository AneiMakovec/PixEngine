//
//  Scene.h
//  PixEngine
//
//  Created by Anei Makovec on 26/10/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 The most simple implementation of a scene. Has no scene users.
 */
@interface Scene : NSObject<NSFastEnumeration> {
    NSMutableArray *items;
}

- (void) addItem:(id)item;
- (void) remove:(id)item;
- (void) clear;

@end

NS_ASSUME_NONNULL_END
