//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Sara Duckler on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (id)randomItem
{
    // Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                     @"Rusty",
                                     @"Shinny",
                                     nil];
    // Create an array of three nounds
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                               @"Spork",
                               @"Mac",
                               nil];
    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, call the modulo operator, gives
    // you the remainder.  So adjectiveIndex is a random number
    // from 0 to 2 inclusive.
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}

//
// The designated initializer
//
- (id)initWithItemName:(NSString *)theItemName
        valueInDollars:(int)theValue
          serialNumber:(NSString *)theSerialNumber
{
    self = [super init];
    
    self.itemName = theItemName;
    self.valueInDollars = theValue;
    self.serialNumber = theSerialNumber;
    dateCreated = [[NSDate alloc] init];
    
    return self;
}


- (void) setItemName:(NSString *)str
{
    itemName = str;
}
- (NSString *) itemName
{
    return itemName;
}

- (void) setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
- (NSString *) serialNumber
{
    return serialNumber;
}

- (void) setValueInDollars:(int)i
{
    valueInDollars = i;
}
- (int) valueInDollars
{
    return valueInDollars;
}

- (NSDate *) dateCreated
{
    return dateCreated;
}

//@Override
- (NSString *) description
{
    return [[NSString alloc] initWithFormat:@"%@ %@ %d %@", [self itemName], [self serialNumber], [self valueInDollars], [self dateCreated]];
}

@end
