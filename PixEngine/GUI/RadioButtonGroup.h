//
//  RadioButtonGroup.h
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PixEngine.Scene.Objects.h"

#import "RadioButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface RadioButtonGroup : NSObject<NSFastEnumeration, ICustomUpdate> {
    NSMutableArray *buttons;
    
    RadioButton *pressedButton;
}

@property (nonatomic, readonly) RadioButton *pressedButton;

- (void) registerRadioButton:(RadioButton *)button;

@end

NS_ASSUME_NONNULL_END
