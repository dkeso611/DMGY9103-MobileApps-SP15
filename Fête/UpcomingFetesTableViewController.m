//
//  UpcomingFetesTableViewController.m
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "UpcomingFetesTableViewController.h"
#import "Fete.h"
#import "FeteCell.h"
#import "FetesStore.h"
#import "FeteDetailViewController.h"
#import <UIKit/UIKit.h>
#import "ThrowAFeteViewController.h"


@interface UpcomingFetesTableViewController ()



@end

@implementation UpcomingFetesTableViewController



- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
   
   
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Change navigation button text color
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    //Change selected tab bar item color
    self.tabBarController.tabBar.tintColor = [UIColor redColor];
    
  
    // The InBackground methods are asynchronous, so any code after this will run
    // immediately.  Any code that depends on the query result should be moved
    // inside the completion block above.
    
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    
    
    
}


#pragma mark - Table view data source

- (id)initWithCoder:(NSCoder *)aCoder
{
    self = [super initWithCoder:aCoder];
    if (self) {
        // The className to query on
        self.parseClassName = @"Fete";
        
        // The key of the PFObject to display in the label of the default cell style
        self.textKey = @"name";
        
        // Whether the built-in pull-to-refresh is enabled
        self.pullToRefreshEnabled = YES;
        
        // Whether the built-in pagination is enabled
        self.paginationEnabled = NO;
    }
    return self;
}

- (PFQuery *)queryForTable
{
    PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
    
    return query;
}

- (PFTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object{
    
    
    FeteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeteCell"];
    
    if (cell == nil) {
        cell = [[FeteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FeteCell"];
    }
    
    // Configure the cell
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
        [timeFormat setDateFormat:@"h:mm a"];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"EEE, MMM d"];
    
//    PFFile *thumbnail = [fete objectForKey:@"flyer"];
//    PFImageView *thumbnailImageView = (PFImageView*)[cell viewWithTag:100];
//    thumbnailImageView.image = [UIImage imageNamed:@"placeholder.jpg"];
//    thumbnailImageView.file = thumbnail;
//    [thumbnailImageView loadInBackground];
    
    
        cell.nameLabel.text = [object objectForKey:@"name"];
    
        PFFile *thumbnail = [object objectForKey:@"flyer"];
        cell.flyerLabel.image = [UIImage imageNamed:@"placeholder.jpg"];
        cell.flyerLabel.file = thumbnail;
        [cell.flyerLabel loadInBackground];
    
        cell.locationLabel.text = [object objectForKey:@"location"];
        cell.promoLabel.text = [object objectForKey:@"promo"];
        cell.priceLabel.text = [object objectForKey:@"price"];
        cell.timeLabel.text = [object objectForKey:@"time"];
    
        cell.dateLabel.text = [object objectForKey:@"date"];
        //cell.timeLabel.text = [timeFormat stringFromDate:fetes.time];
        //cell.dateLabel.text = [dateFormat stringFromDate:fetes.date];
    
        cell.nameLabel.textColor = [UIColor redColor];
        cell.priceLabel.textColor = [UIColor grayColor];
    
    return cell;
}

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
////#warning Potentially incomplete method implementation.
//   // Return the number of sections.
//   return 1;
//}
//
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//////#warning Incomplete method implementation.
//   // Return the number of rows in the section.
//    return [[[FetesStore sharedStore] allFetes] count];
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView
//         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    FeteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeteCell" forIndexPath:indexPath];
//    
//
//    // Configure the cell...
//    
//    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
//    [timeFormat setDateFormat:@"h:mm a"];
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
//    [dateFormat setDateFormat:@"EEE, MMM d"];
//    
//    
//    aFete *fetes = [[[FetesStore sharedStore] allFetes] objectAtIndex:indexPath.row];
//    cell.nameLabel.text = fetes.name;
//    cell.flyerLabel.image = fetes.flyer;
//    cell.locationLabel.text = fetes.location;
//    cell.promoLabel.text = fetes.promo;
//    cell.priceLabel.text = fetes.price;
//    cell.timeLabel.text = [timeFormat stringFromDate:fetes.time];
//    cell.dateLabel.text = [dateFormat stringFromDate:fetes.date];
//    
//    cell.nameLabel.textColor = [UIColor redColor];
//    cell.priceLabel.textColor = [UIColor grayColor];
//
//   return cell;
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showFeteDetail"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        FeteDetailViewController *detailViewController = segue.destinationViewController;
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
        Fete *fete = [[Fete alloc] init];
        fete.name = [object objectForKey:@"name"];
        fete.flyer = [object objectForKey:@"flyer"];
        fete.promo = [object objectForKey:@"promo"];
        fete.price = [object objectForKey:@"price"];
        fete.location = [object objectForKey:@"location"];
        fete.musicBy = [object objectForKey:@"musicBy"];
        fete.time = [object objectForKey:@"time"];
        fete.date = [object objectForKey:@"date"];
        
        
        detailViewController.fete = fete;
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
