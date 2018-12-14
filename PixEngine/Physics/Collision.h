//
//  Collision.h
//  PixEngine
//
//  Created by Anei Makovec on 23/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Collision : NSObject {
    
}

+ (void) collisionBetween:(id)item1 and:(id)item2;

+ (BOOL) shouldResolveCollisionBetween:(id)item1 and:(id)item2;
+ (void) reportCollisionBetween:(id)item1 and:(id)item2;

+ (void) collisionBetween:(id)item1 and:(id)item2 usingAlgorithm:(Class)collisionAlgorithm;

+ (void) relaxCollisionBetween:(id)item1 and:(id)item2 by:(Vector2*)relaxDistance;

+ (void) exchangeEnergyBetween:(id)item1 and:(id)item2 along:(Vector2*)collisionNormal pointOfImpact:(Vector2*)pointOfImpact;

@end

NS_ASSUME_NONNULL_END
