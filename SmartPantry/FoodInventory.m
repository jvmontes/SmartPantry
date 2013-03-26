//
//  FoodInventory.m
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/16/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import "FoodInventory.h"


@implementation FoodInventory

- (FoodInventory *) init {
    self = [super init];
    if (self != nil) {
        self.fridgeDict = [[NSMutableDictionary alloc] init];
        self.pantryDict = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)addItem:(FoodInventoryItem *)item toInventory:(NSNumber *)inventoryType
{
    if (inventoryType == [NSNumber numberWithInt:0]) {
        [self.fridgeDict setObject:item forKey:item.itemName];
    }
    else if (inventoryType == [NSNumber numberWithInt:1]) {
        [self.pantryDict setObject:item forKey:item.itemName];
    }
    
    return;
}

-(void)sortInventory:(NSMutableArray *)inventory withOption:(NSNumber *)option
{
    return;
}

@end
