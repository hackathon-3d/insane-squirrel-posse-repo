//
//  KUMAdviceViewController.m
//  Kids: The Users Manual
//
//  Created by admin on 8/24/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import "KUMAdviceViewController.h"
#import "KUMAppDelegate.h"

@implementation KUMAdviceViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    _adviceListDictionary = [appDelegate.dataDictionary objectForKey:@"Advice"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"AdviceList_AdviceDetail"])
    {
        KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        appDelegate.segueParameter = [NSNumber numberWithInteger:[[self.tableView indexPathForSelectedRow] row]];
        NSLog(@"segue triggered: AdviceList->AdviceDetail, index[%@]", appDelegate.segueParameter);
    }
}



#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[_adviceListDictionary objectForKey:@"Advice"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"adviceCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [[_adviceListDictionary objectForKey:@"Advice"] objectAtIndex:indexPath.row];
    
    return cell;
}

@end
