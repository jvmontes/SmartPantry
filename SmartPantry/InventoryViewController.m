//
//  InventoryViewController.m
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/16/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import "InventoryViewController.h"

@interface InventoryViewController ()

@end

@implementation InventoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    inventory = [[FoodInventory alloc] init];
    
    FoodInventoryItem * item1 = [[FoodInventoryItem alloc] init];
    item1.itemName = @"Apples";
    item1.itemCategory = @"Fruits";
    item1.itemQuantity = [NSNumber numberWithInt:4];
    
    FoodInventoryItem * item2 = [[FoodInventoryItem alloc] init];
    item2.itemName = @"Milk";
    item2.itemQuantity = [NSNumber numberWithInt:1];
    
    FoodInventoryItem * item3 = [[FoodInventoryItem alloc] init];
    item3.itemName = @"Potatoes";
    item3.itemQuantity = [NSNumber numberWithInt:5];
    
    FoodInventoryItem * item4 = [[FoodInventoryItem alloc] init];
    item4.itemName = @"Rotini Noodles";
    item4.itemQuantity = [NSNumber numberWithInt:2];
    
    FoodInventoryItem * item5 = [[FoodInventoryItem alloc] init];
    item5.itemName = @"Froot Loops";
    item5.itemQuantity = [NSNumber numberWithInt:1];
    
    
    [inventory addItem:item1 toInventory:[NSNumber numberWithInt:InventoryTypeFridge]];
    [inventory addItem:item2 toInventory:[NSNumber numberWithInt:InventoryTypeFridge]];
    
    [inventory addItem:item3 toInventory:[NSNumber numberWithInt:InventoryTypePantry]];
    [inventory addItem:item4 toInventory:[NSNumber numberWithInt:InventoryTypePantry]];
    [inventory addItem:item5 toInventory:[NSNumber numberWithInt:InventoryTypePantry]];

    itemsLabel.text = [NSString stringWithFormat:@"Items: %u",
                       ([inventory.fridgeDict count] + [inventory.pantryDict count])];
    inventoryList.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [inventoryList reloadData];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [inventory.fridgeDict count];
    }
    else if (section == 1) {
        return [inventory.pantryDict count];
    }
    else
        return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

/*
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView * headerView = [[UIView alloc] initWithFrame:
                           CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, 100)];
    headerView.backgroundColor = [UIColor blueColor];
    return headerView;
}*/

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Fridge";
    }
    else if (section == 1) {
        return @"Pantry";
    }
    else return @"";
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    fridgeArray = [inventory.fridgeDict allValues];
    pantryArray = [inventory.pantryDict allValues];
    
    //Sorts both inventories by item name
    NSArray * nameSortedFridge = [fridgeArray sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        NSString *first = [(FoodInventoryItem *)a itemName];
        NSString *second = [(FoodInventoryItem *)b itemName];
        return [first compare:second];
    }];
    
    NSArray * nameSortedPantry = [pantryArray sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        NSString *first = [(FoodInventoryItem *)a itemName];
        NSString *second = [(FoodInventoryItem *)b itemName];
        return [first compare:second];
    }];
    
    static NSString *CellIdentifier = @"InventoryCell";
    ItemCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        FoodInventoryItem * currentItem = [nameSortedFridge objectAtIndex:indexPath.row];
        [cell setValuesWithItem:currentItem];
    }
    else if (indexPath.section == 1) {
        FoodInventoryItem * currentItem = [nameSortedPantry objectAtIndex:indexPath.row];
        [cell setValuesWithItem:currentItem];
    }

    
    return cell;
}

@end
