//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Sara Duckler on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
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

- (NSString *) description
{
    return itemName;
}

@end
