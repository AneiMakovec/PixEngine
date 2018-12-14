//
//  ICustomUpdate.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol ICustomUpdate <NSObject>

- (void) updateWithGameTime:(GameTime*)gameTime;

@end
