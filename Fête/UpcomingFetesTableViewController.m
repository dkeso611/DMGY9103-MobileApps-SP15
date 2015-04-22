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

@interface UpcomingFetesTableViewController ()

@property NSMutableArray *Fetes;

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
    
    self.Fetes = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    
    aFete * Fete1 = [[aFete alloc] initWithName:@"Glow Party"
                                          flyer:[UIImage imageNamed:@"glowparty.jpg"]
                                          promo:@"Team AK"
                                       location:@"Mira Lounge"
                                           date:nil
                                           time:nil
                                        musicBy:nil
                                          price:@"$5"
                                       hashtags:nil];
    
    [self.Fetes addObject:Fete1];
    
    aFete * Fete2 = [[aFete alloc] initWithName:@"YB's All White Party"
                                          flyer:nil
                                          promo:@"Team YB"
                                       location:@"Santos Party House"
                                           date:nil
                                           time:nil
                                        musicBy:nil
                                          price:@"Free"
                                       hashtags:nil];
    
    [self.Fetes addObject:Fete2];
    
    aFete * Fete3 = [[aFete alloc] initWithName:@"Annual Taurus Party"
                                          flyer:nil
                                          promo:@"DJ Tunez Promotion"
                                       location:@"Milk River"
                                           date:nil
                                           time:nil
                                        musicBy:nil
                                          price:@"Free"
                                       hashtags:nil];
    
    [self.Fetes addObject:Fete3];
    
    
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
  return [self.Fetes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FeteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeteCell" forIndexPath:indexPath];

    // Configure the cell...
    aFete *Fetes = [self.Fetes objectAtIndex:indexPath.row];
    cell.nameLabel.text = Fetes.name;
    cell.flyerLabel.image = Fetes.flyer;
    cell.locationLabel.text = Fetes.location;
    cell.promoLabel.text = Fetes.promo;

   return cell;
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
