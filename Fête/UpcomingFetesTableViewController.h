//
//  UpcomingFetesTableViewController.h
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <UIKit/UIViewController.h>
#import <UIKit/UIKit.h>
#import <ParseUI.h>
#import <Parse.h>


@interface UpcomingFetesTableViewController : PFQueryTableViewController


@property (nonatomic, strong) IBOutlet UITableView *tableView;


- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@end
