//
//  NSDateAdditions.m
//  PhToolkit
//
//  Created by Philippe on 10-10-11.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import "NSDateAdditions.h"


@implementation NSDate (ComparisonAdditions)

- (NSDate*) earlierDateForDay: (NSDate*) anotherDate
{
    if ([self compareForDay: anotherDate] == NSOrderedDescending)
        return anotherDate;
    return self;
}

- (NSDate*) laterDateForDay: (NSDate*) anotherDate
{
    if ([self compareForDay: anotherDate] == NSOrderedAscending)
        return anotherDate;
    return self;
}

- (NSComparisonResult) compareForDay: (NSDate*) other
{
    const NSTimeInterval kSecsPerDay = 60.0 * 60.0 * 24.0;

    NSTimeInterval difference = [self timeIntervalSince1970] - [other timeIntervalSince1970];

    if (fabs(difference) < kSecsPerDay)
        return NSOrderedSame;
    if (difference < 0.0)
        return NSOrderedAscending;
    return NSOrderedDescending;
}

- (BOOL) isEqualToDateForDay: (NSDate*) otherDate
{
    return [self compareForDay: otherDate] == NSOrderedSame;
}

@end


@implementation NSDate (CreationAdditions)

- (NSDate *)midnightInTimeZone:(NSTimeZone *)timeZone
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    if (timeZone)
        [calendar setTimeZone:timeZone];

    NSDateComponents *dateComponents = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:self];
    [dateComponents setHour:0];
    [dateComponents setMinute:0];
    [dateComponents setSecond:0];

    NSDate *midnightForTimeZone = [calendar dateFromComponents:dateComponents];
    [calendar release];

    return midnightForTimeZone;
}

- (NSDate *)midnightUTC
{
    return [self midnightInTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
}

- (NSDate *)midnight
{
    return [self midnightInTimeZone:nil];
}

@end
