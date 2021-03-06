//
//  DetailViewController.m
//  Notes
//
//  Created by Ben Augarten on 12/17/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import "DetailViewController.h"

/*@interface DetailViewController ()

@end
*/
@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(Note *)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.titleField.text = self.detailItem.title;
        self.bodyField.text = self.detailItem.body;
    }
    [self.titleField addTarget:self action:@selector(textChanged:) forControlEvents:UIControlEventEditingChanged];
}

- (void)textChanged:(UITextField *)sender {
    NSLog(@"OnTitleChange");
    self.detailItem.title = sender.text;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (IBAction)titleFieldTextChange:(UITextField *)view {
    self.detailItem.title = view.text;
}*/

- (BOOL)textViewShouldEndEditing:(UITextView *)view {
    self.detailItem.body = view.text;
    return TRUE;
}

@end
