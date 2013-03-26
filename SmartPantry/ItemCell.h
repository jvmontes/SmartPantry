//
//  ItemCell.h
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/17/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodInventoryItem.h"

@interface ItemCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel * name;
@property (strong, nonatomic) IBOutlet UILabel * stock;
@property (strong, nonatomic) IBOutlet UILabel *purchaseDate;
@property (strong, nonatomic) IBOutlet UILabel *expirationDate;

@property (strong, nonatomic) IBOutlet UIView *itemView;

- (void)setValuesWithItem:(FoodInventoryItem *)item;

@end
