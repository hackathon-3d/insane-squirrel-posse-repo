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
    
    
    _hepbField.text = [[_childDetailDictionary objectForKey:@"Shot_hepb"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _rvField.text = [[_childDetailDictionary objectForKey:@"Shot_rv"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _dtapField.text = [[_childDetailDictionary objectForKey:@"Shot_dtap"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _hibField.text = [[_childDetailDictionary objectForKey:@"Shot_hib"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _pcvField.text = [[_childDetailDictionary objectForKey:@"Shot_pcv"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _ipvField.text = [[_childDetailDictionary objectForKey:@"Shot_ipv"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _influenzaField.text = [[_childDetailDictionary objectForKey:@"Shot_influenza"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _mmrField.text = [[_childDetailDictionary objectForKey:@"Shot_mmr"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _varicellaField.text = [[_childDetailDictionary objectForKey:@"Shot_varicella"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _hepaField.text = [[_childDetailDictionary objectForKey:@"Shot_hepa"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    
    _teethingField.text = [[_childDetailDictionary objectForKey:@"Teething"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _crawlingField.text = [[_childDetailDictionary objectForKey:@"Crawling"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _stepsField.text = [[_childDetailDictionary objectForKey:@"Steps"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _daddaField.text = [[_childDetailDictionary objectForKey:@"Dadda"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _mommaField.text = [[_childDetailDictionary objectForKey:@"Momma"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _timeoutField.text = [[_childDetailDictionary objectForKey:@"Timeout"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _babysitterField.text = [[_childDetailDictionary objectForKey:@"Babysitter"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _pottyField.text = [[_childDetailDictionary objectForKey:@"Potty"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _toothField.text = [[_childDetailDictionary objectForKey:@"Tooth"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _tricycleField.text = [[_childDetailDictionary objectForKey:@"Tricycle"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _bicycleField.text = [[_childDetailDictionary objectForKey:@"Bicycle"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _trainingWheelsField.text = [[_childDetailDictionary objectForKey:@"TrainingWheels"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _schoolField.text = [[_childDetailDictionary objectForKey:@"School"] objectAtIndex:[appDelegate.segueParameter integerValue]];
    _sleepOverField.text = [[_childDetailDictionary objectForKey:@"Sleepover"] objectAtIndex:[appDelegate.segueParameter integerValue]];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"tfShouldBeginEditing...");
    [_textFieldBeingEdited resignFirstResponder];
    _textFieldBeingEdited = textField;
    return TRUE;
}

@end
