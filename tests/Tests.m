//
//  Tests.m
//  PhToolkit
//
//  Created by Philippe on 10-10-11.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import "Tests.h"


@implementation Tests

- (void) testDateComparison
{
    NSDate *ancient = [NSDate distantPast];
    NSDate *future = [NSDate distantFuture];

    STAssertFalse([ancient isEqualToDate: future], @"ancient date should not equal future date");
    STAssertTrue([ancient earlierDate: future] == ancient, @"ancient date should be earlier than future date");
    STAssertTrue([future laterDate: ancient] == future, @"ancient date should be earlier than future date");
    STAssertTrue([ancient compare: future] == NSOrderedAscending, @"ancient date should be earlier than future date");
    STAssertTrue([future compare: ancient] == NSOrderedDescending, @"ancient date should be earlier than future date");
}

@end
