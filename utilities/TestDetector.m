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
    if ([env valueForKey:@"XCInjectBundle"] != nil)
        return YES;
    if ([[env valueForKey:@"WRAPPER_EXTENSION"] isEqualToString:@"octest"])
        return YES;
    if ([@"otest" isEqualToString:[[NSProcessInfo processInfo] processName]])
        return YES;

    return NO;
}

@end
