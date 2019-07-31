//
//  ITouchUpdate.h
//  PixEngine
//
//  Created by Anei Makovec on 31/07/2019.
//  Copyright © 2019 Anei Makovec. All rights reserved.
//

@protocol ITouchUpdate <NSObject>

- (void) updateWithInverseView:(Matrix *)inverseView;

@end
