//
//  UIDeviceAdditions.m
//  PhToolkit
//
//  Created by Philippe Casgrain on 2012-10-20.
//  Copyright 2012 Philippe Casgrain. All rights reserved.
//

#import "UIDeviceAdditions.h"
#include <sys/sysctl.h>

@implementation UIDevice (UIDeviceAdditions)

- (NSString*) platform
{
	size_t size;
	sysctlbyname("hw.machine", NULL, &size, NULL, 0);
	char *machine = malloc(size);
	sysctlbyname("hw.machine", machine, &size, NULL, 0);
	NSString *platform = [NSString stringWithCString:machine encoding:NSASCIIStringEncoding];
	free(machine);
	return platform;
}

@end
