//
//  UIDeviceAdditions.h
//  PhToolkit
//
//  Created by Philippe Casgrain on 2012-10-20.
//  Copyright 2012 Philippe Casgrain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (UIDeviceAdditions)

// Returns the detailed model information, e.g. iPhone4,2
- (NSString*) platform;

@end
