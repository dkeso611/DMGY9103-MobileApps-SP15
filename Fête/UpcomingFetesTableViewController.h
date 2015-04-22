//
//  UpcomingFetesTableViewController.h
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <UIKit/UIViewController.h>
#import <UIKit/UIKit.h>


@interface UpcomingFetesTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *promoLabel;

@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *flyerLabel;



- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@end
