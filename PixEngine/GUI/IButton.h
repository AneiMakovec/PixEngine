//
//  IButton.h
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ITouchUpdate.h"

@protocol IButton <ITouchUpdate>

@property (nonatomic, readonly) Rectangle *inputArea;
@property (nonatomic) BOOL enabled;

@property (nonatomic, readonly) BOOL isDown;

- (void) updateWithInverseView:(Matrix*)inverseView;

@end
