//
//  FoodInventoryItem.h
//  SmartPantry
//
//  Created by Jorge Viramontes on 3/16/13.
//  Copyright (c) 2013 SmartPantry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodInventoryItem : NSObject
{
    NSNumber * itemPreferenceRating;
    UIImage * itemImage;
}

@property(nonatomic, strong) NSString   *itemName;
@property(nonatomic, strong) NSNumber   *itemQuantity;
@property(nonatomic, strong) NSDate     *itemPurchaseDate;
@property(nonatomic, strong) NSDate     *itemExpirationDate;
@property(nonatomic, strong) NSString   *itemCategory;
@property(nonatomic, strong) NSURL      *itemImageURL;

- (NSComparisonResult)compareName:(FoodInventoryItem *)otherObject;

- (NSComparisonResult)compareQuantity:(FoodInventoryItem *)otherObject;

- (NSComparisonResult)compareExpirationDate:(FoodInventoryItem *)otherObject;


@end
