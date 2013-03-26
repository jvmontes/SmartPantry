//
//  FoodInventory.h
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/16/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodInventoryItem.h"

@interface FoodInventory : NSObject
{
    
    
}

@property (nonatomic, strong) NSMutableDictionary * fridgeDict;

@property (nonatomic, strong) NSMutableDictionary * pantryDict;


-(void)addItem:(FoodInventoryItem *)item toInventory:(NSNumber *)inventoryType;

-(void)sortInventory: (NSMutableDictionary *)inventory withOption:(NSNumber *)option;

@end
