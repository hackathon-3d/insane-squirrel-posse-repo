//
//  KUMChildListViewController.m
//  Kids: The Users Manual
//
//  Created by admin on 8/24/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import "KUMChildListViewController.h"
#import "KUMAppDelegate.h"

@implementation KUMChildListViewController




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ChildList_ChildDetail"])
    {
        KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        appDelegate.segueParameter = [NSNumber numberWithInteger:[[self.tableView indexPathForSelectedRow] row]];
        NSLog(@"segue triggered: ChildList->ChildDetail, index[%@]", appDelegate.segueParameter);
    }
}



#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"childListCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = @"First text";
    cell.detailTextLabel.text = @"First detail";
    
    return cell;
}

@end
