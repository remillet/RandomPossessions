//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Sara Duckler on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

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
