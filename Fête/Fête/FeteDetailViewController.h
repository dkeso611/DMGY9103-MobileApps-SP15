//
//  FeteDetailViewController.h
//  Fête
//
//  Created by Kes on 4/29/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI.h>
#import <Parse.h>

@class Fete;

@interface FeteDetailViewController : UIViewController

@property (nonatomic, strong) Fete *fete;



@property (weak, nonatomic) IBOutlet PFImageView* flyerLabel;

@property (weak, nonatomic) IBOutlet UILabel *promoLabel;

@property (weak, nonatomic) IBOutlet UILabel *musicLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet PFImageView *backgroundLabel;

@end
