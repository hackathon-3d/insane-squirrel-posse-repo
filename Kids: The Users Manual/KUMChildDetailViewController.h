//
//  KUMChildDetailViewController.h
//  Kids: The Users Manual
//
//  Created by admin on 8/24/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KUMChildDetailViewController : UITableViewController <UITableViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) NSDictionary *childDetailDictionary;
@property (strong, nonatomic) UITextField *textFieldBeingEdited;

@property (strong, nonatomic) IBOutlet UITextField *genderField;
@property (strong, nonatomic) IBOutlet UITextField *birthdayField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameField;
@property (strong, nonatomic) IBOutlet UITextField *lengthField;
@property (strong, nonatomic) IBOutlet UITextField *weightField;

@property (strong, nonatomic) IBOutlet UITextField *hepbField;
@property (strong, nonatomic) IBOutlet UITextField *rvField;
@property (strong, nonatomic) IBOutlet UITextField *dtapField;
@property (strong, nonatomic) IBOutlet UITextField *hibField;
@property (strong, nonatomic) IBOutlet UITextField *pcvField;
@property (strong, nonatomic) IBOutlet UITextField *ipvField;
@property (strong, nonatomic) IBOutlet UITextField *influenzaField;
@property (strong, nonatomic) IBOutlet UITextField *mmrField;
@property (strong, nonatomic) IBOutlet UITextField *varicellaField;
@property (strong, nonatomic) IBOutlet UITextField *hepaField;

@property (strong, nonatomic) IBOutlet UITextField *teethingField;
@property (strong, nonatomic) IBOutlet UITextField *crawlingField;
@property (strong, nonatomic) IBOutlet UITextField *stepsField;
@property (strong, nonatomic) IBOutlet UITextField *daddaField;
@property (strong, nonatomic) IBOutlet UITextField *mommaField;
@property (strong, nonatomic) IBOutlet UITextField *timeoutField;
@property (strong, nonatomic) IBOutlet UITextField *babysitterField;
@property (strong, nonatomic) IBOutlet UITextField *pottyField;
@property (strong, nonatomic) IBOutlet UITextField *toothField;
@property (strong, nonatomic) IBOutlet UITextField *tricycleField;
@property (strong, nonatomic) IBOutlet UITextField *bicycleField;
@property (strong, nonatomic) IBOutlet UITextField *trainingWheelsField;
@property (strong, nonatomic) IBOutlet UITextField *schoolField;
@property (strong, nonatomic) IBOutlet UITextField *sleepOverField;

@end
