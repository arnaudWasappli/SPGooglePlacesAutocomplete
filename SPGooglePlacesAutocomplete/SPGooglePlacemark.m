//
//  SPGooglePlacemark.m
//  SPGooglePlacesAutocompleteDemo
//
//  Created by Lucas Ortis on 03/12/2014.
//  Copyright (c) 2014 tickbox.com.au. All rights reserved.
//

#import "SPGooglePlacemark.h"

@implementation SPGooglePlacemark

- (instancetype)initWithLocality:(NSString *)locality location:(CLLocation *)location {
    self = [super init];
    
    if (self) {
        self->_locality = locality;
        self->_location = location;
    }
    
    return self;
}

@end
