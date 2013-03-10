//
//  BundleTests.m
//  PhToolkit
//
//  Created by Philippe on 10-10-11.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NSBundleAdditions.h"

@interface BundleTests : SenTestCase
{
}
@end

@implementation BundleTests

- (void) testBundlePathForResource
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 20000
    // TODO: figure out how to run iOS-specific tests
    NSBundle *bundle = [NSBundle mainBundle];

    NSString *path1 = [bundle pathForResource:    @"data/testfile" ofType: @"txt"];
    NSString *path2 = [bundle pathForResource_ph: @"data/testfile" ofType: @"txt"];

    STAssertTrue([path1 isEqualToString: path2], @"{%@} should be the same as {%@}", path1, path2);
#endif
}

@end
