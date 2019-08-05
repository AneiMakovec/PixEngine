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
    NSMutableDictionary *buttons;
    
    NSString *pressedButtonKey;
    BOOL pressedButtonChanged;
}

@property (nonatomic, readonly) NSString *pressedButtonKey;
@property (nonatomic) BOOL pressedButtonChanged;

- (void) registerRadioButton:(RadioButton *)button forKey:(NSString *)key;

- (void) reset;

@end

NS_ASSUME_NONNULL_END
