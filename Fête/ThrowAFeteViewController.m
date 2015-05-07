//
//  ThrowAFeteViewController.m
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "ThrowAFeteViewController.h"
#import "aFete.h"

@interface ThrowAFeteViewController ()

@property aFete *myFete;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *submitButton;

@end

@implementation ThrowAFeteViewController

@synthesize nameField;
@synthesize promoField;
@synthesize musicField;
@synthesize priceField;
@synthesize locationField;
@synthesize dateField;
@synthesize timeField;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [self.dateField setInputView:datePicker];
    UIDatePicker *timePicker = [[UIDatePicker alloc]init];
    timePicker.datePickerMode = UIDatePickerModeTime;
    [self.timeField setInputView:timePicker];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (sender != self.submitButton) return;
    
    if (self.nameField.text.length > 0) {
        self.myFete = [[aFete alloc] initWithName:self.nameField.text
                                             flyer:nil
                                             promo:self.promoField.text
                                          location:self.locationField.text
                                              date:nil
                                              time:nil
                                           musicBy:nil
                                             price:self.priceField.text
                                          hashtags:nil];
        
    }
}


@end
