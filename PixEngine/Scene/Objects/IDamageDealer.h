//
//  IDamage.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IDamageDealer <NSObject>

@property (nonatomic, retain) NSMutableArray *targets;

- (void) dealDamageToTargets;
- (void) healTargets;

@end
