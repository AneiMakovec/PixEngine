//
//  IScene.h
//  PixEngine
//
//  Created by Anei Makovec on 23/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol IScene <NSObject, NSFastEnumeration, IUpdatable>

- (void) addItem:(id)item;
- (void) removeItem:(id)item;
- (void) clear;

@property (nonatomic, readonly) Event *itemAdded;
@property (nonatomic, readonly) Event *itemRemoved;

@end
