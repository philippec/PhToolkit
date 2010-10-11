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
    NSDate *previous = [NSDate dateWithString: @"2010-09-07 12:29:16 -0400"];
    NSDate *now = [NSDate dateWithString: @"2010-10-11 12:31:00 -0400"];
    NSDate *nowCopy = [NSDate dateWithString: @"2010-10-11 12:31:00 -0400"];
    NSDate *nowMinus1 = [NSDate dateWithString: @"2010-10-11 12:30:59 -0400"];
    NSDate *nowPlus1 = [NSDate dateWithString: @"2010-10-11 12:31:01 -0400"];
    NSDate *nowMidnight = [NSDate dateWithString: @"2010-10-11 00:00:00 -0400"];
    NSDate *nowAlmostMidnight = [NSDate dateWithString: @"2010-10-11 23:59:59 -0400"];

    STAssertNotNil(previous, @"dateWithString should not be nil");
    STAssertNotNil(now, @"dateWithString should not be nil");
    STAssertNotNil(previous, @"dateWithString should not be nil");
    STAssertNotNil(nowCopy, @"dateWithString should not be nil");
    STAssertNotNil(nowMinus1, @"dateWithString should not be nil");
    STAssertNotNil(nowPlus1, @"dateWithString should not be nil");
    STAssertNotNil(nowMidnight, @"dateWithString should not be nil");
    STAssertNotNil(nowAlmostMidnight, @"dateWithString should not be nil");

    // Compare ancient and future
    STAssertFalse([ancient isEqualToDate: future], @"ancient date should not equal future date");
    STAssertTrue([ancient earlierDate: future] == ancient, @"ancient date should be earlier than future date");
    STAssertTrue([future laterDate: ancient] == future, @"ancient date should be earlier than future date");
    STAssertTrue([ancient compare: future] == NSOrderedAscending, @"ancient date should be earlier than future date");
    STAssertTrue([future compare: ancient] == NSOrderedDescending, @"ancient date should be earlier than future date");

    // Roughly a month of difference
    STAssertFalse([previous isEqualToDate: now], @"previous date should not equal now");
    STAssertTrue([previous compare: now] == NSOrderedAscending, @"previous date should come before now");
    STAssertTrue([previous earlierDate: now] == previous, @"previous date should come before now");
    STAssertTrue([now laterDate: previous] == now, @"previous date should come before now");

    // Exact same date
    STAssertFalse(now == nowCopy, @"now and copy should be two different pointers");
    STAssertTrue([now isEqualToDate: nowCopy], @"now and copy should be equal");
    STAssertTrue([now compare: nowCopy] == NSOrderedSame, @"now and copy should be equal");
    // Not sure if those behaviors are defined, so test them
    STAssertTrue([now earlierDate: nowCopy] == now, @"now and copy should be equal");
    STAssertTrue([now laterDate: nowCopy] == now, @"now and copy should be equal");
    STAssertTrue([nowCopy earlierDate: now] == nowCopy, @"now and copy should be equal");
    STAssertTrue([nowCopy laterDate: now] == nowCopy, @"now and copy should be equal");

    // One second difference in the past
    STAssertFalse([nowMinus1 isEqualToDate: now], @"previous date should not equal now");
    STAssertTrue([nowMinus1 compare: now] == NSOrderedAscending, @"previous date should come before now");
    STAssertTrue([nowMinus1 earlierDate: now] == nowMinus1, @"previous date should come before now");
    STAssertTrue([now laterDate: nowMinus1] == now, @"previous date should come before now");

    // One second difference in the future
    STAssertFalse([nowPlus1 isEqualToDate: now], @"next date should not equal now");
    STAssertTrue([nowPlus1 compare: now] == NSOrderedDescending, @"next date should come after now");
    STAssertTrue([nowPlus1 earlierDate: now] == now, @"next date should come after now");
    STAssertTrue([now laterDate: nowPlus1] == nowPlus1, @"next date should come after now");

    // Almost 24 hours
    STAssertFalse([nowMidnight isEqualToDate: nowAlmostMidnight], @"previous date should not equal now");
    STAssertTrue([nowMidnight compare: nowAlmostMidnight] == NSOrderedAscending, @"previous date should come before now");
    STAssertTrue([nowMidnight earlierDate: nowAlmostMidnight] == nowMidnight, @"previous date should come before now");
    STAssertTrue([nowMidnight laterDate: nowAlmostMidnight] == nowAlmostMidnight, @"previous date should come before now");
}

@end
