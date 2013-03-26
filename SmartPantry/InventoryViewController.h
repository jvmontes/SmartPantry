//
//  InventoryViewController.h
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/16/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodInventoryItem.h"
#import "FoodInventory.h"
#import "ItemCell.h"

typedef enum {
    InventoryTypeFridge,
    InventoryTypePantry
} InventoryType;

@interface InventoryViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    
    IBOutlet UITextView *itemsLabel;
    
    IBOutlet UITableView *inventoryList;
    NSArray * fridgeArray;
    NSArray * pantryArray;
    
    FoodInventory * inventory;
    
}

@end
