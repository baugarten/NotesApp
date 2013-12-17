//
//  DetailViewController.h
//  Notes
//
//  Created by Ben Augarten on 12/17/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
