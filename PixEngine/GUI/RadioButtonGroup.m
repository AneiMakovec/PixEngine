//
//  RadioButtonGroup.m
//  PixEngine
//
//  Created by Anei Makovec on 28/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

#import "RadioButtonGroup.h"

@implementation RadioButtonGroup

- (id) init {
    self = [super init];
    if (self != nil) {
        buttons = [[NSMutableDictionary alloc] init];
        pressedButtonKey = nil;
        pressedButtonChanged = NO;
    }
    return self;
}

@synthesize pressedButtonKey, pressedButtonChanged;


- (void) updateWithGameTime:(GameTime *)gameTime {
    // check if a new button was pressed
    for (NSString *key in [buttons allKeys]) {
        RadioButton *button = [buttons valueForKey:key];
        if (button.isDown && key != pressedButtonKey) {
            pressedButtonKey = key;
            pressedButtonChanged = YES;
            [self resetOtherButtons];
            break;
        }
    }
}




- (void) registerRadioButton:(RadioButton *)button forKey:(NSString *)key {
    if (button.isDown && pressedButtonKey == nil) {
        pressedButtonKey = key;
    }
    
    [buttons setValue:button forKey:key];
    button.enabled = NO;
}

- (void) reset {
    pressedButtonChanged = NO;
}



// enables fast enumeration
- (NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state
                                   objects:(id *)stackbuf
                                     count:(NSUInteger)len {
    return [buttons countByEnumeratingWithState:state objects:stackbuf count:len];
}

- (void) resetOtherButtons {
    for (NSString *key in [buttons allKeys]) {
        if (key != pressedButtonKey) {
            RadioButton *button = [buttons valueForKey:key];
            [button reset];
        }
    }
}


- (void) dealloc {
    [buttons release];
    if (pressedButtonKey != nil)
        [pressedButtonKey release];
    
    [super dealloc];
}

@end
