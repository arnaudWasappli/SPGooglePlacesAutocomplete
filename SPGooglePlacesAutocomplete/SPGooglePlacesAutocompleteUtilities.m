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

NSDictionary *SPGetMatchingDictionaryType() {
    static NSDictionary *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = @{
                           @"accounting":[NSNumber numberWithInt:SPPlaceTypeAccounting],
                           @"administrative_area_level_1":[NSNumber numberWithInt:SPPlaceTypeAdministrativeAreaLevel1],
                           @"administrative_area_level_2":[NSNumber numberWithInt:SPPlaceTypeAdministrativeAreaLevel2],
                           @"administrative_area_level_3":[NSNumber numberWithInt:SPPlaceTypeAdministrativeAreaLevel3],
                           @"airport":[NSNumber numberWithInt:SPPlaceTypeAirport],
                           @"amusement_park":[NSNumber numberWithInt:SPPlaceTypeAmusementPark],
                           @"aquarium":[NSNumber numberWithInt:SPPlaceTypeAquarium],
                           @"art_gallery":[NSNumber numberWithInt:SPPlaceTypeArtGallery],
                           @"atm":[NSNumber numberWithInt:SPPlaceTypeAtm],
                           @"bakery":[NSNumber numberWithInt:SPPlaceTypeBakery],
                           @"bank":[NSNumber numberWithInt:SPPlaceTypeBank],
                           @"bar":[NSNumber numberWithInt:SPPlaceTypeBar],
                           @"beauty_salon":[NSNumber numberWithInt:SPPlaceTypeBeautySalon],
                           @"bicycle_store":[NSNumber numberWithInt:SPPlaceTypeBicycleStore],
                           @"book_store":[NSNumber numberWithInt:SPPlaceTypeBookStore],
                           @"bowling_alley":[NSNumber numberWithInt:SPPlaceTypeBowlingAlley],
                           @"bus_station":[NSNumber numberWithInt:SPPlaceTypeBusStation],
                           @"cafe":[NSNumber numberWithInt:SPPlaceTypeCafe],
                           @"campground":[NSNumber numberWithInt:SPPlaceTypeCampground],
                           @"car_dealer":[NSNumber numberWithInt:SPPlaceTypeCarDealer],
                           @"car_rental":[NSNumber numberWithInt:SPPlaceTypeCarRental],
                           @"car_repair":[NSNumber numberWithInt:SPPlaceTypeCarRepair],
                           @"car_wash":[NSNumber numberWithInt:SPPlaceTypeCarWash],
                           @"casino":[NSNumber numberWithInt:SPPlaceTypeCasino],
                           @"cemetery":[NSNumber numberWithInt:SPPlaceTypeCemetery],
                           @"church":[NSNumber numberWithInt:SPPlaceTypeChurch],
                           @"city_hall":[NSNumber numberWithInt:SPPlaceTypeCityHall],
                           @"clothing_store":[NSNumber numberWithInt:SPPlaceTypeClothingStore],
                           @"colloquial_area":[NSNumber numberWithInt:SPPlaceTypeColloquialArea],
                           @"convenience_store":[NSNumber numberWithInt:SPPlaceTypeConvenienceStore],
                           @"country":[NSNumber numberWithInt:SPPlaceTypeCountry],
                           @"courthouse":[NSNumber numberWithInt:SPPlaceTypeCourthouse],
                           @"dentist":[NSNumber numberWithInt:SPPlaceTypeDentist],
                           @"department_store":[NSNumber numberWithInt:SPPlaceTypeDepartmentStore],
                           @"doctor":[NSNumber numberWithInt:SPPlaceTypeDoctor],
                           @"electrician":[NSNumber numberWithInt:SPPlaceTypeElectrician],
                           @"electronics_store":[NSNumber numberWithInt:SPPlaceTypeElectronicsStore],
                           @"embassy":[NSNumber numberWithInt:SPPlaceTypeEmbassy],
                           @"establishment":[NSNumber numberWithInt:SPPlaceTypeEstablishment],
                           @"finance":[NSNumber numberWithInt:SPPlaceTypeFinance],
                           @"fire_station":[NSNumber numberWithInt:SPPlaceTypeFireStation],
                           @"floor":[NSNumber numberWithInt:SPPlaceTypeFloor],
                           @"florist":[NSNumber numberWithInt:SPPlaceTypeFlorist],
                           @"food":[NSNumber numberWithInt:SPPlaceTypeFood],
                           @"funeral_home":[NSNumber numberWithInt:SPPlaceTypeFuneralHome],
                           @"furniture_store":[NSNumber numberWithInt:SPPlaceTypeFurnitureStore],
                           @"gas_station":[NSNumber numberWithInt:SPPlaceTypeGasStation],
                           @"general_contractor":[NSNumber numberWithInt:SPPlaceTypeGeneralContractor],
                           @"geocode":[NSNumber numberWithInt:SPPlaceTypeGeocode],
                           @"grocery_or_supermarket":[NSNumber numberWithInt:SPPlaceTypeGroceryOrSupermarket],
                           @"gym":[NSNumber numberWithInt:SPPlaceTypeGym],
                           @"hair_care":[NSNumber numberWithInt:SPPlaceTypeHairCare],
                           @"hardware_store":[NSNumber numberWithInt:SPPlaceTypeHardwareStore],
                           @"health":[NSNumber numberWithInt:SPPlaceTypeHealth],
                           @"hindu_temple":[NSNumber numberWithInt:SPPlaceTypeHinduTemple],
                           @"home_goods_store":[NSNumber numberWithInt:SPPlaceTypeHomeGoodsStore],
                           @"hospital":[NSNumber numberWithInt:SPPlaceTypeHospital],
                           @"insurance_agency":[NSNumber numberWithInt:SPPlaceTypeInsuranceAgency],
                           @"intersection":[NSNumber numberWithInt:SPPlaceTypeIntersection],
                           @"jewelry_store":[NSNumber numberWithInt:SPPlaceTypeJewelryStore],
                           @"laundry":[NSNumber numberWithInt:SPPlaceTypeLaundry],
                           @"lawyer":[NSNumber numberWithInt:SPPlaceTypeLawyer],
                           @"library":[NSNumber numberWithInt:SPPlaceTypeLibrary],
                           @"liquor_store":[NSNumber numberWithInt:SPPlaceTypeLiquorStore],
                           @"local_government_office":[NSNumber numberWithInt:SPPlaceTypeLocalGovernmentOffice],
                           @"locality":[NSNumber numberWithInt:SPPlaceTypeLocality],
                           @"locksmith":[NSNumber numberWithInt:SPPlaceTypeLocksmith],
                           @"lodging":[NSNumber numberWithInt:SPPlaceTypeLodging],
                           @"meal_delivery":[NSNumber numberWithInt:SPPlaceTypeMealDelivery],
                           @"meal_takeaway":[NSNumber numberWithInt:SPPlaceTypeMealTakeaway],
                           @"mosque":[NSNumber numberWithInt:SPPlaceTypeMosque],
                           @"movie_rental":[NSNumber numberWithInt:SPPlaceTypeMovieRental],
                           @"movie_theater":[NSNumber numberWithInt:SPPlaceTypeMovieTheater],
                           @"moving_company":[NSNumber numberWithInt:SPPlaceTypeMovingCompany],
                           @"museum":[NSNumber numberWithInt:SPPlaceTypeMuseum],
                           @"natural_feature":[NSNumber numberWithInt:SPPlaceTypeNaturalFeature],
                           @"neighborhood":[NSNumber numberWithInt:SPPlaceTypeNeighborhood],
                           @"night_club":[NSNumber numberWithInt:SPPlaceTypeNightClub],
                           @"painter":[NSNumber numberWithInt:SPPlaceTypePainter],
                           @"park":[NSNumber numberWithInt:SPPlaceTypePark],
                           @"parking":[NSNumber numberWithInt:SPPlaceTypeParking],
                           @"pet_store":[NSNumber numberWithInt:SPPlaceTypePetStore],
                           @"pharmacy":[NSNumber numberWithInt:SPPlaceTypePharmacy],
                           @"physiotherapist":[NSNumber numberWithInt:SPPlaceTypePhysiotherapist],
                           @"place_of_worship":[NSNumber numberWithInt:SPPlaceTypePlaceOfWorship],
                           @"plumber":[NSNumber numberWithInt:SPPlaceTypePlumber],
                           @"point_of_interest":[NSNumber numberWithInt:SPPlaceTypePointOfInterest],
                           @"police":[NSNumber numberWithInt:SPPlaceTypePolice],
                           @"political":[NSNumber numberWithInt:SPPlaceTypePolitical],
                           @"post_box":[NSNumber numberWithInt:SPPlaceTypePostBox],
                           @"post_office":[NSNumber numberWithInt:SPPlaceTypePostOffice],
                           @"postal_code":[NSNumber numberWithInt:SPPlaceTypePostalCode],
                           @"postal_code_prefix":[NSNumber numberWithInt:SPPlaceTypePostalCodePrefix],
                           @"postal_town":[NSNumber numberWithInt:SPPlaceTypePostalTown],
                           @"premise":[NSNumber numberWithInt:SPPlaceTypePremise],
                           @"real_estate_agency":[NSNumber numberWithInt:SPPlaceTypeRealEstateAgency],
                           @"restaurant":[NSNumber numberWithInt:SPPlaceTypeRestaurant],
                           @"roofing_contractor":[NSNumber numberWithInt:SPPlaceTypeRoofingContractor],
                           @"room":[NSNumber numberWithInt:SPPlaceTypeRoom],
                           @"route":[NSNumber numberWithInt:SPPlaceTypeRoute],
                           @"rv_park":[NSNumber numberWithInt:SPPlaceTypeRvPark],
                           @"school":[NSNumber numberWithInt:SPPlaceTypeSchool],
                           @"shoe_store":[NSNumber numberWithInt:SPPlaceTypeShoeStore],
                           @"shopping_mall":[NSNumber numberWithInt:SPPlaceTypeShoppingMall],
                           @"spa":[NSNumber numberWithInt:SPPlaceTypeSpa],
                           @"stadium":[NSNumber numberWithInt:SPPlaceTypeStadium],
                           @"storage":[NSNumber numberWithInt:SPPlaceTypeStorage],
                           @"store":[NSNumber numberWithInt:SPPlaceTypeStore],
                           @"street_address":[NSNumber numberWithInt:SPPlaceTypeStreetAddress],
                           @"street_number":[NSNumber numberWithInt:SPPlaceTypeStreetNumber],
                           @"sublocality":[NSNumber numberWithInt:SPPlaceTypeSublocality],
                           @"sublocality_level_1":[NSNumber numberWithInt:SPPlaceTypeSublocalityLevel1],
                           @"sublocality_level_2":[NSNumber numberWithInt:SPPlaceTypeSublocalityLevel2],
                           @"sublocality_level_3":[NSNumber numberWithInt:SPPlaceTypeSublocalityLevel3],
                           @"sublocality_level_4":[NSNumber numberWithInt:SPPlaceTypeSublocalityLevel4],
                           @"sublocality_level_5":[NSNumber numberWithInt:SPPlaceTypeSublocalityLevel5],
                           @"subpremise":[NSNumber numberWithInt:SPPlaceTypeSubpremise],
                           @"subway_station":[NSNumber numberWithInt:SPPlaceTypeSubwayStation],
                           @"synagogue":[NSNumber numberWithInt:SPPlaceTypeSynagogue],
                           @"taxi_stand":[NSNumber numberWithInt:SPPlaceTypeTaxiStand],
                           @"train_station":[NSNumber numberWithInt:SPPlaceTypeTrainStation],
                           @"transit_station":[NSNumber numberWithInt:SPPlaceTypeTransitStation],
                           @"travel_agency":[NSNumber numberWithInt:SPPlaceTypeTravelAgency],
                           @"university":[NSNumber numberWithInt:SPPlaceTypeUniversity],
                           @"veterinary_care":[NSNumber numberWithInt:SPPlaceTypeVeterinaryCare],
                           @"zoo":[NSNumber numberWithInt:SPPlaceTypeZoo]
                           };
    });
    return sharedInstance;
}

NSString *SPPlaceTypeStringForPlaceType(SPGooglePlacesAutocompleteFilterPlaceType type) {
    NSString *returnType = nil;
    
    switch (type) {
        case SPFilterPlaceTypeCities:
            returnType = @"(cities)";
            break;
        case SPFilterPlaceTypeEstablishment:
            returnType = @"establishment";
            break;
        case SPFilterPlaceTypeGeocode:
            returnType = @"geocode";
            break;
        default:
            returnType = @"";
            break;
    }
    
    return returnType;
}

NSArray *SPPlaceTypeFromDictionary(NSDictionary *placeDictionary) {
    NSMutableArray *types = [NSMutableArray array];
    
    for (NSString *typeKey in placeDictionary[@"types"]) {
        NSNumber *typeNumber = [SPGetMatchingDictionaryType() objectForKey:typeKey];
        
        [types addObject:typeNumber];
    }
    
    return types;
}

NSString *SPBooleanStringForBool(BOOL boolean) {
    return boolean ? @"true" : @"false";
}

NSArray *SPPlaceTypeStringForPlaceTypes(NSArray *types) {
    NSMutableArray *returnTypes = [NSMutableArray array];
    
    for (NSNumber *typeNumber in types) {
        NSString *typeString = [[SPGetMatchingDictionaryType() allKeysForObject:typeNumber] objectAtIndex:0];
        
        [returnTypes addObject:typeString];
    }
    
    return returnTypes;
}

extern BOOL SPIsEmptyString(NSString *string) {
    return !string || ![string length];
}