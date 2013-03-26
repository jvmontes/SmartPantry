//
//  ItemCell.m
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/17/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setValuesWithItem:(FoodInventoryItem *)item
{
    self.name.text = item.itemName;
    self.stock.text = [NSString stringWithFormat:@"%@", item.itemQuantity];
    //self.expirationDate.text = [NSString stringWithFormat:@"%@", currentItem.itemExpirationDate];
    //self.purchaseDate.text = [NSString stringWithFormat:@"%@", currentItem.itemPurchaseDate];
}

@end
