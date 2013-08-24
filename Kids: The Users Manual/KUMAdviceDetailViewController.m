//
//  KUMAdviceDetailViewController.m
//  Kids: The Users Manual
//
//  Created by admin on 8/24/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import "KUMAdviceDetailViewController.h"
#import "KUMAppDelegate.h"

@implementation KUMAdviceDetailViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    _adviceURLListArray = [[appDelegate.dataDictionary objectForKey:@"Advice"] objectForKey:@"AdviceURL"];
    
    NSString *stringURL = [_adviceURLListArray objectAtIndex:[appDelegate.segueParameter integerValue]];
    NSString *encodedString = [stringURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:encodedString];
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:30.0];
    [_theWebView loadRequest:theRequest];
    _theWebView.scalesPageToFit = TRUE;
}

@end
