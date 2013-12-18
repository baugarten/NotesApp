//
//  Note.m
//  Notes
//
//  Created by Ben Augarten on 12/18/13.
//  Copyright (c) 2013 Ben Augarten. All rights reserved.
//

#import "Note.h"

@implementation Note

@synthesize title = _title;
@synthesize body = _body;

- (id)initWithTitle:(NSString*)title {
    if ((self = [super init])) {
        self.title = title;
        self.body = @"";
    }
    return self;
}
@end
