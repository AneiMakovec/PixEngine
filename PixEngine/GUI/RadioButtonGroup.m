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
        lastButtonPressed = nil;
    }
    return self;
}

@synthesize scene;


- (void) updateWithGameTime:(GameTime *)gameTime {
    for (RadioButton *button in buttons) {
        if (button.isDown) {
            if (lastButtonPressed == nil) {
                lastButtonPressed = button;
            } else if (lastButtonPressed != button) {
                lastButtonPressed = button;
                [self resetOtherButtons];
                break;
            }
        }
    }
}




- (void) addRadioButton:(RadioButton *)button {
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
        if (button != lastButtonPressed) {
            [button reset];
        }
    }
}


- (void) dealloc {
    [buttons release];
    
    [super dealloc];
}

@end
