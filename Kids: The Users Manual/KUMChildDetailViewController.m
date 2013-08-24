//
//  KUMChildDetailViewController.m
//  Kids: The Users Manual
//
//  Created by admin on 8/24/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import "KUMChildDetailViewController.h"
#import "KUMAppDelegate.h"

@implementation KUMChildDetailViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    _childDetailDictionary = [appDelegate.dataDictionary objectForKey:@"Details"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    _genderField.text = [[_childDetailDictionary objectForKey:@"Gender"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _birthdayField.text = [[_childDetailDictionary objectForKey:@"Birthday"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _nicknameField.text = [[_childDetailDictionary objectForKey:@"Nickname"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _lengthField.text = [[_childDetailDictionary objectForKey:@"Length"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _weightField.text = [[_childDetailDictionary objectForKey:@"Weight"] objectAtIndex:[appDelegate.segueParameter integerValue]];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"tfShouldBeginEditing...");
    [_textFieldBeingEdited resignFirstResponder];
    _textFieldBeingEdited = textField;
    return TRUE;
}

@end
