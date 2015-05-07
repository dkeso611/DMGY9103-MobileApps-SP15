//
//  FeteCell.h
//  Fête
//
//  Created by Kes on 4/14/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UpcomingFetesTableViewController.h"


@interface FeteCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *promoLabel;

@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *flyerLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;


@end
