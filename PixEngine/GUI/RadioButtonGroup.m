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
        buttons = [[NSMutableArray alloc] init];
        pressedButton = nil;
    }
    return self;
}

@synthesize pressedButton;


- (void) updateWithGameTime:(GameTime *)gameTime {
    // check if a new button was pressed
    for (RadioButton *button in buttons) {
        if (button.isDown && button != pressedButton) {
            pressedButton = button;
            [self resetOtherButtons];
            break;
        }
    }
}




- (void) registerRadioButton:(RadioButton *)button {
    if (button.isDown && pressedButton == nil)
        pressedButton = button;
    
    [buttons addObject:button];
    button.enabled = NO;
}

// enables fast enumeration
- (NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state
                                   objects:(id *)stackbuf
                                     count:(NSUInteger)len {
    return [buttons countByEnumeratingWithState:state objects:stackbuf count:len];
}

- (void) resetOtherButtons {
    for (RadioButton *button in buttons) {
        if (button != pressedButton) {
            [button reset];
        }
    }
}


- (void) dealloc {
    [buttons release];
    if (pressedButton != nil)
        [pressedButton release];
    
    [super dealloc];
}

@end
