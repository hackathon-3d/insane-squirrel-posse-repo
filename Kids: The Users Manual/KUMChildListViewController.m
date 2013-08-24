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




- (void)viewDidLoad
{
    [super viewDidLoad];
    KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    _childListArray = [appDelegate.dataDictionary objectForKey:@"Children"];
}

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
return [_childListArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"childListCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [_childListArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
