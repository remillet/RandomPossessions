//
//  main.m
//  RandomPossessions
//
//  Created by Duckler Sara on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "REMFirecracker.h"
#import "REMCow.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!!!");
        
        // From "Beginning RandomPossessions", Chapter 2
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Add some string items
        [items addObject:@"Zero"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Add a firecracker
        [items addObject:[[REMFirecracker alloc] init]];
        //
        [items addObject:[[REMCow alloc] init]];
        
        // Insert an items
        [items insertObject:@"One" atIndex:1];
        
        // Print out the items to the console
        for (int i = 0; i < [items count]; i++) {
            NSLog(@"Item at index:%d is:%@", i, [items objectAtIndex:i]);
        }
        
        // Destroy the array pointed to by 'items'
        items = nil;
        
    }
    return 0;
}

