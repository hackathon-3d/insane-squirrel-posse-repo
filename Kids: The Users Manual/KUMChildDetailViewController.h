//
//  KUMChildDetailViewController.h
//  Kids: The Users Manual
//
//  Created by admin on 8/24/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KUMChildDetailViewController : UITableViewController

@property (strong, nonatomic) NSDictionary *childDetailDictionary;
@property (strong, nonatomic) UITextField *textFieldBeingEdited;

@property (strong, nonatomic) IBOutlet UITextField *genderField;
@property (strong, nonatomic) IBOutlet UITextField *birthdayField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameField;
@property (strong, nonatomic) IBOutlet UITextField *lengthField;
@property (strong, nonatomic) IBOutlet UITextField *weightField;

@end
