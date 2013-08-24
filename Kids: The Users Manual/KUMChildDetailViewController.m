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

- (void)viewWillDisappear:(BOOL)animated
{
    if ([self isMovingFromParentViewController]) {
        NSLog(@"viewWillDisappear...Save the data");
        
        KUMAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        NSString *error;
        NSData *dictToData = [NSPropertyListSerialization dataFromPropertyList:appDelegate.dataDictionary format:NSPropertyListXMLFormat_v1_0 errorDescription:&error];
        
        NSMutableDictionary *newDataDictionary = (NSMutableDictionary *)[NSPropertyListSerialization
                                                 propertyListFromData:dictToData
                                                 mutabilityOption:NSPropertyListMutableContainersAndLeaves
                                                 format:NULL
                                                 errorDescription:&error];
        NSMutableDictionary *newChildDetailDictionary = [newDataDictionary objectForKey:@"Details"];
        
        NSString *theValue = _genderField.text;
        NSMutableArray *newArray = [newChildDetailDictionary objectForKey:@"Gender"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Gender"];
        
        theValue = _birthdayField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Birthday"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Birthday"];
        
        theValue = _nicknameField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Nickname"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Nickname"];
        
        theValue = _lengthField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Length"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Length"];
        
        theValue = _weightField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Weight"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Weight"];
        
        theValue = _hepbField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_hepb"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_hepb"];
        
        theValue = _rvField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_rv"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_rv"];
        
        theValue = _dtapField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_dtap"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_dtap"];
        
        theValue = _hibField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_hib"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_hib"];
        
        theValue = _pcvField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_pcv"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_pcv"];
        
        theValue = _ipvField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_ipv"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_ipv"];
        
        theValue = _influenzaField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_influenza"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_influenza"];
        
        theValue = _mmrField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_mmr"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_mmr"];
        
        theValue = _varicellaField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_varicella"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_varicella"];
        
        theValue = _hepaField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Shot_hepa"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Shot_hepa"];
        
        theValue = _teethingField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Teething"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Teething"];
        
        theValue = _crawlingField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Crawling"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Crawling"];
        
        theValue = _stepsField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Steps"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Steps"];
        
        theValue = _daddaField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Dadda"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Dadda"];
        
        theValue = _mommaField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Momma"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Momma"];
        
        theValue = _timeoutField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Timeout"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Timeout"];
        
        theValue = _babysitterField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Babysitter"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Babysitter"];
        
        theValue = _pottyField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Potty"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Potty"];
        
        theValue = _toothField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Tooth"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Tooth"];
        
        theValue = _tricycleField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Tricycle"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Tricycle"];
        
        theValue = _bicycleField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Bicycle"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Bicycle"];
        
        theValue = _trainingWheelsField.text;
        newArray = [newChildDetailDictionary objectForKey:@"TrainingWheels"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"TrainingWheels"];
        
        theValue = _schoolField.text;
        newArray = [newChildDetailDictionary objectForKey:@"School"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"School"];
        
        theValue = _sleepOverField.text;
        newArray = [newChildDetailDictionary objectForKey:@"Sleepover"];
        [newArray setObject:theValue atIndexedSubscript:[appDelegate.segueParameter integerValue]];
        [newChildDetailDictionary setValue:newArray forKey:@"Sleepover"];
        
        [newDataDictionary setObject:newChildDetailDictionary forKey:@"Details"];
        NSLog(@"newDict: %@", newDataDictionary);
        BOOL outcome = [newDataDictionary writeToFile:[[NSBundle mainBundle] pathForResource:@"Datafile" ofType:@"plist"] atomically:YES];
        NSLog(@"WriteFile: %d", outcome);
    }
}

//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    NSLog(@"tfShouldBeginEditing...");
//    [_textFieldBeingEdited resignFirstResponder];
//    _textFieldBeingEdited = textField;
//    return TRUE;
//}
//
//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"tvDidSelectRow...");
//    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
//    [_textFieldBeingEdited resignFirstResponder];
//    _textFieldBeingEdited = nil;
//}

@end
