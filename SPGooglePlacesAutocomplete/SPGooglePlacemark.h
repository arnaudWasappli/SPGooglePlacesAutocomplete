//
//  SPGooglePlacemark.h
//  SPGooglePlacesAutocompleteDemo
//
//  Created by Lucas Ortis on 03/12/2014.
//  Copyright (c) 2014 tickbox.com.au. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface SPGooglePlacemark : NSObject

@property(readonly, strong, nonatomic) NSString   *locality;
@property(readonly, strong, nonatomic) CLLocation *location;

- (instancetype)initWithLocality:(NSString *)locality location:(CLLocation *)location;

@end
