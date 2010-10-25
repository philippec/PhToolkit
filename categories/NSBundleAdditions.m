//
//  NSBundleAdditions.m
//  PhToolkit
//
//  Created by Philippe on 10-10-24.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import "NSBundleAdditions.h"


@implementation NSBundle (ResourceAdditions)

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 20000
- (NSString*) pathForResource_ph: (NSString*) name ofType: (NSString*) ext
{
    NSString *resPath = [name stringByAppendingPathExtension: ext];
    NSString *bndlResPath = [self resourcePath];
    return [bndlResPath stringByAppendingPathComponent: resPath];
}
#endif

@end
