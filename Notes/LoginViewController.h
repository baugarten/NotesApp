//
//  LoginViewController.h
//  Notes
//
//  Created by Ben Augarten on 12/17/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)loginPressed:(UIButton *)sender;

@end