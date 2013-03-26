//
//  FoodInventoryItem.m
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/16/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import "FoodInventoryItem.h"

@implementation FoodInventoryItem



- (NSComparisonResult)compareName:(FoodInventoryItem *)otherObject {
    return [self.itemName compare:otherObject.itemName];
}

- (NSComparisonResult)compareQuantity:(FoodInventoryItem *)otherObject {
    return [self.itemQuantity compare:otherObject.itemQuantity];
}

- (NSComparisonResult)compareExpirationDate:(FoodInventoryItem *)otherObject {
    return [self.itemExpirationDate compare:otherObject.itemExpirationDate];
}

@end
