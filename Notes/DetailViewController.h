//
//  DetailViewController.h
//  Notes
//
//  Created by Ben Augarten on 12/17/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Note.h"

@interface DetailViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *bodyField;

@property (strong, nonatomic) Note *detailItem;

- (IBAction)titleFieldTextChange:(id)sender;

- (void)configureView;

@end
