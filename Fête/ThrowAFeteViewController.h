//
//  ThrowAFeteViewController.h
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThrowAFeteViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
   
}

@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (weak, nonatomic) IBOutlet UITextField *promoField;

@property (weak, nonatomic) IBOutlet UITextField *musicField;

@property (weak, nonatomic) IBOutlet UITextField *priceField;

@property (weak, nonatomic) IBOutlet UITextField *locationField;

@property (weak, nonatomic) IBOutlet UITextField *dateField;

@property (weak, nonatomic) IBOutlet UITextField *timeField;

@property (weak, nonatomic) IBOutlet UIImageView *flyer;

@property (weak, nonatomic) IBOutlet UIButton *uploadButton;

@property (strong, nonatomic)NSData *imageData;


- (IBAction)upload:(id)sender;

@end
