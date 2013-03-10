//
//  Tests.m
//  PhToolkit
//
//  Created by Philippe on 10-10-11.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TestDetector.h"

@interface Tests : SenTestCase
{
}
@end

@implementation Tests

- (void) testUnitTestsRunning
{
    BOOL running = NO;
    STAssertNoThrow(running = [TestDetector runningTests], @"");
    STAssertTrue(running, @"");
}

@end
