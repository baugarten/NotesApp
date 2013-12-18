//
//  LoginViewController.m
//  Notes
//
//  Created by Ben Augarten on 12/17/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import "LoginViewController.h"
#import "MasterViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginPressed:(UIButton *)sender {
    if (self.username.text.length > 0 && self.password.text.length > 0) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        MasterViewController *myTableViewController = [storyboard  instantiateViewControllerWithIdentifier:@"NavigationController"];
//MasterViewController *writtenNotes = [[MasterViewController alloc] init];
//        UINavigationController *navigationController=[[UINavigationController alloc] initWithRootViewController:writtenNotes];

        [self presentViewController:myTableViewController animated:YES completion:nil];
        UIAlertView *alertsuccess = [[UIAlertView alloc] initWithTitle:@"Congrats" message:@"You are authorized"
                                                        delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertsuccess show];
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
}
@end
