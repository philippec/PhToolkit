//
//  TestDetector.m
//  PhToolkit
//
//  Created by Philippe on 2012-11-04.
//  Copyright 2012 Philippe Casgrain. All rights reserved.
//
//

#import "TestDetector.h"

@implementation TestDetector

+ (BOOL) runningTests
{
    NSDictionary *env = [[NSProcessInfo processInfo] environment];
    return ([env valueForKey:@"XCInjectBundle"] != nil);
}

@end
