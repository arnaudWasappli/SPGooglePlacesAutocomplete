//
//  SPGooglePlacesAutocompleteUtilities.m
//  SPGooglePlacesAutocomplete
//
//  Created by Stephen Poletto on 7/18/12.
//  Copyright (c) 2012 Stephen Poletto. All rights reserved.
//

#import "SPGooglePlacesAutocompleteUtilities.h"

@implementation NSArray(SPFoundationAdditions)
- (id)onlyObject {
    return [self count] == 1 ? self[0] : nil;
}
@end

SPGooglePlacesAutocompletePlaceType SPPlaceTypeFromDictionary(NSDictionary *placeDictionary) {
    SPGooglePlacesAutocompletePlaceType type;
    
    if ([placeDictionary[@"types"] containsObject:@"establishment"]) {
        type = SPPlaceTypeEstablishment;
    }
    else if ([placeDictionary[@"types"] containsObject:@"geocode"]) {
        type = SPPlaceTypeGeocode;
    }
    else if ([placeDictionary[@"types"] containsObject:@"(cities)"]) {
        type = SPPlaceTypeCities;
    }
    else {
        type = SPPlaceTypeCities;
    }
    
    return type;
}

NSString *SPBooleanStringForBool(BOOL boolean) {
    return boolean ? @"true" : @"false";
}

NSString *SPPlaceTypeStringForPlaceType(SPGooglePlacesAutocompletePlaceType type) {
    NSString *returnType;
    
    switch (type) {
        case SPPlaceTypeEstablishment:
            returnType = @"establishment";
            break;
        case SPPlaceTypeCities:
            returnType = @"(cities)";
            break;
        case SPPlaceTypeGeocode:
            returnType = @"geocode";
            break;
        default:
            returnType = @"cities";
            break;
    }
    
    return returnType;
}

extern BOOL SPIsEmptyString(NSString *string) {
    return !string || ![string length];
}