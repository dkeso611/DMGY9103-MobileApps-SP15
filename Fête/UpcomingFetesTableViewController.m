//
//  UpcomingFetesTableViewController.m
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "UpcomingFetesTableViewController.h"
#import "aFete.h"
#import "FeteCell.h"
#import "FetesStore.h"
#import "FeteDetailViewController.h"
#import <UIKit/UIKit.h>
#import "ThrowAFeteViewController.h"


@interface UpcomingFetesTableViewController ()



@end

@implementation UpcomingFetesTableViewController



- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    ThrowAFeteViewController *source = [segue sourceViewController];
   
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    
    
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
   // Return the number of sections.
   return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
////#warning Incomplete method implementation.
   // Return the number of rows in the section.
    return [[[FetesStore sharedStore] allFetes] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FeteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeteCell" forIndexPath:indexPath];
    

    // Configure the cell...
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"h:mm a"];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"EEE, MMM d"];
    
    
    aFete *fetes = [[[FetesStore sharedStore] allFetes] objectAtIndex:indexPath.row];
    cell.nameLabel.text = fetes.name;
    cell.flyerLabel.image = fetes.flyer;
    cell.locationLabel.text = fetes.location;
    cell.promoLabel.text = fetes.promo;
    cell.priceLabel.text = fetes.price;
    cell.timeLabel.text = [timeFormat stringFromDate:fetes.time];
    cell.dateLabel.text = [dateFormat stringFromDate:fetes.date];
    
    cell.nameLabel.textColor = [UIColor redColor];
    cell.priceLabel.textColor = [UIColor grayColor];

   return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showFeteDetail"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        FeteDetailViewController *detailViewController = segue.destinationViewController;
        
        detailViewController.fete = [[[FetesStore sharedStore] allFetes] objectAtIndex:indexPath.row];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
