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
#import "BNRItem.h"

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
        
        // Log the array itself
        NSLog(@"The array is: %@", items);
        
        // Create a BNRItem instance
        BNRItem *item = [[BNRItem alloc] init];
        [item setItemName:@"Red sofa"];
        [item setSerialNumber:@"A1B2C"];
        [item setValueInDollars:100];
        NSLog(@"%@ %@ %d %@", [item itemName], [item serialNumber], [item valueInDollars], [item dateCreated]);
        
        NSString *description = [[NSString alloc] initWithFormat:@"%@ %@ %d %@", [item itemName], [item serialNumber], [item valueInDollars], [item dateCreated]];
        NSLog(@"Description:%@", description);
        NSLog(@"Logging description: %@", item);
        
        // Create a firecracker
        id cracker = [[REMFirecracker alloc] init];
        NSLog(@"A firecracker saying hello: %@", [cracker sayHello]);
        
        // Destroy the array pointed to by 'items'
        items = nil;
        
    }
    return 0;
}

