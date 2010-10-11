//
//  NSDateAdditions.h
//  PhToolkit
//
//  Created by Philippe on 10-10-11.
//  Copyright 2010 Philippe Casgrain. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (ComparisonAdditions)

- (NSDate*) earlierDateForDay: (NSDate*) anotherDate;
- (NSDate*) laterDateForDay: (NSDate*) anotherDate;
- (NSComparisonResult) compareForDay: (NSDate*) other;
- (BOOL) isEqualToDateForDay: (NSDate*) otherDate;

@end
