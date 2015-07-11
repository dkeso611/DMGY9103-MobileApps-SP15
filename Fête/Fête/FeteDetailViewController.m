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
#import "RSVPViewController.h"


@interface FeteDetailViewController ()

@property (nonatomic, strong) NSUserDefaults *defaults;


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

@synthesize goButton;

static CGFloat centerX;
static CGFloat centerY;



- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    
    self.defaults = [NSUserDefaults standardUserDefaults];
    
    
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
    
    
    // SSBouncyButton
    //    [self.goingButton setTitle:@"Follow" forState:UIControlStateNormal];
    //    [self.goingButton setTitle:@"Following" forState:UIControlStateSelected];
    //    [self.goingButton addTarget:self action:@selector(buttonDidPress:) forControlEvents:UIControlEventTouchUpInside];
    //    [self.goingButton addSubview:goingButton];
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    centerX = screenSize.width / 2;
    centerY = screenSize.height / 2;
    // tintColor, cornerRadius
    //    SSBouncyButton *customButton
//    self.goButton = [[SSBouncyButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    
    self.goButton = [[SSBouncyButton alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    self.goButton.center = CGPointMake(screenSize.width/2, screenSize.height - 80);
    goButton.tintColor = [UIColor redColor];
    goButton.cornerRadius = 5;
    [goButton setTitle:@"Go!" forState:UIControlStateNormal];
    [goButton setTitle:@"Going!" forState:UIControlStateSelected];
    [goButton addTarget:self action:@selector(buttonDidPress:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:goButton];

    
    
}
- (void)buttonDidPress:(UIButton *)button
{

    button.selected = !button.selected;
    
//    UILabel *label = [[UILabel alloc] init];
//    label.text = @"Try touch long, too.";
//    label.textColor = [UIColor lightGrayColor];
//    label.font = [UIFont systemFontOfSize:12];
//    label.tag = 999;
//    [label sizeToFit];
//    [self.view addSubview:label];
//    if (![self.view viewWithTag:999]) {
//        UILabel *label = [[UILabel alloc] init];
//        label.text = @"Try touch long, too.";
//        label.textColor = [UIColor lightGrayColor];
//        label.font = [UIFont systemFontOfSize:12];
//        label.tag = 999;
//        [label sizeToFit];
//        [self.view addSubview:label];
//    }
    
//    NSLog(@"%@", fete.objectId);
//
//    [self.defaults setObject:fete forKey:[fete objectForKey:@"objectId"]];
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
