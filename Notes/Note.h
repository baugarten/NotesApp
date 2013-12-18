//
//  Note.h
//  Notes
//
//  Created by Ben Augarten on 12/18/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (strong) NSString *title;
@property (strong) NSString *body;

- (id) initWithTitle:(NSString*)title;

@end
