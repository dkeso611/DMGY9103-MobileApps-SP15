//
//  FeteDetailView.m
//  Fête
//
//  Created by Kes on 4/29/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "FeteDetailViewController.h"
#import "aFete.h"
#import "FetesStore.h"
#import "UpcomingFetesTableViewController.h"

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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"h:mm a"];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"EEE, MMM d"];
    
    aFete *fetes = self.fete;
    
    self.flyerLabel.image = fetes.flyer;
    self.nameLabel.text = fetes.name;
    self.promoLabel.text = fetes.promo;
    self.locationLabel.text = fetes.location;
    self.priceLabel.text = fetes.price;
    self.musicLabel.text = nil;
    self.timeLabel.text = [timeFormat stringFromDate:fetes.time];
    self.dateLabel.text = [dateFormat stringFromDate:fetes.date];
    
 
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setItem:(aFete*)fete
{
    _fete = fete;
    self.navigationItem.title = _fete.name;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
