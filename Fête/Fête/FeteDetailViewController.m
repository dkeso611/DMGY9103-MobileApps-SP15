//
//  FeteDetailView.m
//  Fête
//
//  Created by Kes on 4/29/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "FeteDetailViewController.h"
#import "Fete.h"
#import "FetesStore.h"
#import "UpcomingFetesTableViewController.h"
#import <ParseUI.h>

@interface FeteDetailViewController ()


@end

@implementation FeteDetailViewController


@synthesize flyerLabel;

@synthesize nameLabel;

@synthesize promoLabel;

@synthesize musicLabel;

@synthesize dateLabel;

@synthesize timeLabel;

@synthesize locationLabel;

@synthesize priceLabel;

@synthesize backgroundLabel;

@synthesize fete;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    self.title = fete.name;

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"h:mm a"];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"EEE, MMM d"];
    
//    Fete *fetes = self.fete;
    
    self.flyerLabel.file = fete.flyer;
    self.nameLabel.text = fete.name;
    self.promoLabel.text = fete.promo;
    self.locationLabel.text = fete.location;
    self.priceLabel.text = fete.price;
    self.musicLabel.text = nil;
    self.timeLabel.text = fete.time; //[timeFormat stringFromDate:fete.time];
    self.dateLabel.text = fete.date;//[dateFormat stringFromDate:fete.date];
    self.backgroundLabel.file = fete.flyer;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)setItem:(Fete*)fete
//{
//    
//    self.navigationItem.title = fete.name;
//}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
