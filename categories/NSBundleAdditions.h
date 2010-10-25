//
//  NSBundleAdditions.h
//  PhToolkit
//
//  Created by Philippe on 10-10-24.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSBundle (ResourceAdditions)

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 20000
- (NSString*) pathForResource_ph: (NSString*) name ofType: (NSString*) ext;
#endif

@end
