//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Sara Duckler on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

- (void) setItemName:(NSString *)str;
- (NSString *) itemName;

- (void) setSerialNumber:(NSString *)str;
- (NSString *) serialNumber;

- (void) setValueInDollars:(int)i;
- (int) valueInDollars;

- (NSDate *) dateCreated;
@end
