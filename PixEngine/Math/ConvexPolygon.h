//
//  ConvexPolygon.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConvexPolygon : NSObject {
    NSArray *vertices;
    NSArray *edges;
    NSArray *halfPlanes;
}

- (id) initWithVertices:(NSArray*)theVertices;

+ (ConvexPolygon*) polygonWithVertices:(NSArray*)theVertices;

@property (nonatomic, readonly) NSArray *vertices;
@property (nonatomic, readonly) NSArray *edges;
@property (nonatomic, readonly) NSArray *halfPlanes;

@end

NS_ASSUME_NONNULL_END
