//
//  Image.h
//  PixEngine
//
//  Created by Matej Jan on 21.12.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Image : NSObject {
    Texture2D *texture;
    Rectangle *sourceRectangle;
    
    Rectangle *drawRectangle;
    
    Color *color;
    
    Vector2 *position;
    Vector2 *origin;
    Vector2 *scale;
    
    float rotation;
    float layerDepth;
    
    BOOL drawToRectangle;
}

- (id) initWithTexture:(Texture2D*)theTexture position:(Vector2*)thePosition;

- (id) initWithTexture:(Texture2D *)theTexture toRectangle:(Rectangle*)rectangle;

@property (nonatomic, retain) Texture2D *texture;
@property (nonatomic, retain) Rectangle *sourceRectangle;

@property (nonatomic, retain) Rectangle *drawRectangle;

@property (nonatomic, retain) Color *color;

@property (nonatomic, retain) Vector2 *position;
@property (nonatomic, retain) Vector2 *origin;
@property (nonatomic, retain) Vector2 *scale;

@property (nonatomic) float rotation;
@property (nonatomic) float layerDepth;

@property (nonatomic, readonly) BOOL drawToRectangle;

- (void) setScaleUniform:(float)value;

@end

NS_ASSUME_NONNULL_END
