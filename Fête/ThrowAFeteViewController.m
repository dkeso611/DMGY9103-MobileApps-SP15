//
//  ThrowAFeteViewController.m
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "ThrowAFeteViewController.h"
#import "Fete.h"
#import <Parse.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <MBProgressHUD.h>


@interface ThrowAFeteViewController ()

@property Fete *myFete;

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
@synthesize flyer;
@synthesize uploadButton;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    //Change navigation button text color
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    //Change selected tab bar item color
    self.tabBarController.tabBar.tintColor = [UIColor redColor];
    
    //Datepicker toolbar customization
    UIToolbar* toolbar = [[UIToolbar alloc] init];
    toolbar.tintColor = [UIColor redColor];
    toolbar.barTintColor = nil;
    toolbar.translucent = YES;
    [toolbar sizeToFit];
    
    
    //Toolbar buttons
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStylePlain  target:self action:@selector(doneAction:)];

    UIBarButtonItem* cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                                  target:self
                                                                                  action:@selector(cancelAction:)];
    UIBarButtonItem* flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                   target:nil
                                                                                   action:nil];
    [toolbar setItems:@[cancelButton, flexibleSpace, doneButton]];
    
    self.dateField.inputAccessoryView = toolbar;
//    self.timeField.inputAccessoryView = toolbar;
    


    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
   
    [datePicker setMinimumDate:[NSDate date]];
    [datePicker setMinuteInterval:5];
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    [datePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
    [self.dateField setInputView:datePicker];


    
//    UIDatePicker *timePicker = [[UIDatePicker alloc]init];
//    [timePicker setMinuteInterval:30];
//    timePicker.datePickerMode = UIDatePickerModeTime;
//    [timePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
//    [self.timeField setInputView:timePicker];
    
}



- (BOOL)textFieldShouldBeginEditing:(UITextField*)textField
{
    if (nameField.text != nil){
    textField.returnKeyType = UIReturnKeyDone;
        
    }
    
    return YES;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    
    return YES;
}




- (void)doneAction:(id)sender
{
    UIDatePicker* datePicker = (UIDatePicker*)[self.dateField inputView];
    NSDate *dateSelected = datePicker.date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"EEE, MMM d, yyyy"];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"h:mm a"];
    
    self.dateField.text = [dateFormat stringFromDate:dateSelected];
    self.timeField.text = [timeFormat stringFromDate:dateSelected];
    
    [self.dateField resignFirstResponder];
    
//    UIDatePicker* timePicker = (UIDatePicker*)[self.timeField inputView];
//    NSDate *timeSelected = timePicker.date;
//    self.timeField.text = [timeFormat stringFromDate:timeSelected];
//  
//    [self.timeField resignFirstResponder];
}

- (void)cancelAction:(id)sender
{
    [self.dateField resignFirstResponder];
    [self.timeField resignFirstResponder];
    
}

- (void)updateTextField:(id)sender
{
        
}

- (void)submitButtonTapped:(id)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)upload:(id)sender {

     
    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    picker.delegate = self; 
    if ((UIButton *) sender == uploadButton) {
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:picker animated:YES completion:NULL];
    }
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage* pickedImage = info[UIImagePickerControllerOriginalImage];
    self.flyer.image = pickedImage;
    self.imageData = UIImagePNGRepresentation(pickedImage);
    
//    NSURL *imagePath = [info objectForKey:UIImagePickerControllerReferenceURL];
//    NSString *imageName = [imagePath lastPathComponent];
    
    [self dismissViewControllerAnimated:YES completion:NULL];

    return;
    

}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    

        if (sender == self.submitButton)
            
        {
            
         
            PFObject *newFete = [PFObject objectWithClassName:@"Fete"];
            newFete[@"name"] = nameField.text;
            
            NSString *filename = [NSString stringWithFormat:@"%@.png", nameField.text];
            PFFile *imageFile = [PFFile fileWithName:filename data:_imageData];
            newFete [@"flyer"] =  imageFile;
            //[newFete setObject:imageFile forKey:@"flyer"];
            //[PFFile fileWithName:nameField.text data:_imageData];
            
            newFete[@"promo"] = promoField.text;
            newFete[@"location"] = locationField.text;
            newFete[@"date"] = dateField.text;
            newFete[@"time"] = timeField.text;
            newFete[@"musicBy"] = @"";
            newFete[@"price"] = priceField.text;
            newFete[@"hashtags"] = @"";
            
            //Show progress
            MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
            hud.mode = MBProgressHUDModeAnnularDeterminate;
            hud.labelText = @"Uploading";
            [hud show:YES];
            
            
            [newFete saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            
                
                [hud hide:YES];
                
                if (succeeded == YES) {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Get Ready to Fête!" message:@"Your fête has been saved" delegate:nil cancelButtonTitle:@"Okay!" otherButtonTitles:nil];
                    [alert show];
                }
                else
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Your fête has not been saved" delegate:nil cancelButtonTitle:@"Okay!" otherButtonTitles:nil];
                    [alert show];
                }
            }];
        }
        
    
}


@end
