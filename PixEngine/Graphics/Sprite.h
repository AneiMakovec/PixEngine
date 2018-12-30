//
//  Sprite.h
//  PixEngine
//
//  Created by Matej Jan on 26.10.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Retronator.Xni.Framework.Graphics.h"


NS_ASSUME_NONNULL_BEGIN

@interface Sprite : NSObject {
    Texture2D *texture;
    Rectangle *sourceRectangle;
    Vector2 *origin;
}

@property (nonatomic, retain) Texture2D *texture;
@property (nonatomic, retain) Rectangle *sourceRectangle;
@property (nonatomic, retain) Vector2 *origin;

@end

NS_ASSUME_NONNULL_END
