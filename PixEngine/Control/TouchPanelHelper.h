//
//  TouchPanelHelper.h
//  PixEngine
//
//  Created by Matej Jan on 1.12.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Retronator.Xni.Framework.Input.Touch.h"

NS_ASSUME_NONNULL_BEGIN

@interface TouchPanelHelper : GameComponent {
    
}

+ (TouchCollection*) getState;

@end

NS_ASSUME_NONNULL_END
