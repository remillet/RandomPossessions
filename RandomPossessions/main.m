//
//  main.m
//  RandomPossessions
//
//  Created by Millet Richard on 4/13/12.
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
        BNRItem *item1 = [[BNRItem alloc] init];
        [item1 setItemName:@"Red sofa"];
        [item1 setSerialNumber:@"A1B2C"];
        [item1 setValueInDollars:100];
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Blue sofa" valueInDollars:120 serialNumber:@"BS-1ABC2"];
        
        NSLog(@"Item created with new designated initializer: %@ %@ %d %@", [item itemName], [item serialNumber], [item valueInDollars], [item dateCreated]);
        
        NSString *description = [[NSString alloc] initWithFormat:@"%@ %@ %d %@", [item itemName], [item serialNumber], [item valueInDollars], [item dateCreated]];
        NSLog(@"Description:%@", description);
        NSLog(@"Logging description: %@", item);
        
        // Create a firecracker
        id cracker = [[REMFirecracker alloc] init];
        NSLog(@"A firecracker saying hello: %@", [cracker sayHello]);
        
        // Destroy the array pointed to by 'items'
        items = nil;
        
        //
        // From pg 55
        //
        NSLog(@"---------------------");
        items = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            BNRItem *p = [BNRItem randomItem];
			[p doSomethingWeird];
            [items addObject:p];
        }
        
        for (int i = 0; i < 10; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
		
        NSLog(@"---------------------");
		
		for (BNRItem *item in items) {
			NSLog(@"%@", item);
		}
        
    }
    return 0;
}

