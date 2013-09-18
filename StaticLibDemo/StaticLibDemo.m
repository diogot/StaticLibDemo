//
//  StaticLibDemo.m
//  StaticLibDemo
//
//  Created by Diogo Tridapalli on 9/18/13.
//  Copyright (c) 2013 Diogo Tridapalli. All rights reserved.
//

#import "StaticLibDemo.h"

@implementation StaticLibDemo

+ (void)demo
{
#ifdef __arm64__
    NSLog(@"arm64");
#elif __x86_64__
    NSLog(@"x86_64");
#elif __i386__
    NSLog(@"i386");
#elif __arm__
    NSLog(@"arm");
#endif
}

@end
