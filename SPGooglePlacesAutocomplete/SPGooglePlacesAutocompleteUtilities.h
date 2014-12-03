//
//  SPGooglePlacesAutocompleteUtilities.h
//  SPGooglePlacesAutocomplete
//
//  Created by Stephen Poletto on 7/18/12.
//  Copyright (c) 2012 Stephen Poletto. All rights reserved.
//

#define kGoogleAPINSErrorCode 42

@class CLPlacemark;
@class SPGooglePlacemark;

typedef NS_ENUM(NSInteger, SPGooglePlacesAutocompleteFilterPlaceType) {
    SPFilterPlaceTypeInvalid = -1,
    SPFilterPlaceTypeGeocode = 0,
    SPFilterPlaceTypeEstablishment,
    SPFilterPlaceTypeCities,
    SPFilterPlaceTypeRegions
};

typedef NS_ENUM(NSInteger, SPGooglePlacesAutocompletePlaceType) {
    SPPlaceTypeAccounting,
    SPPlaceTypeAdministrativeAreaLevel1,
    SPPlaceTypeAdministrativeAreaLevel2,
    SPPlaceTypeAdministrativeAreaLevel3,
    SPPlaceTypeAirport,
    SPPlaceTypeAmusementPark,
    SPPlaceTypeAquarium,
    SPPlaceTypeArtGallery,
    SPPlaceTypeAtm,
    SPPlaceTypeBakery,
    SPPlaceTypeBank,
    SPPlaceTypeBar,
    SPPlaceTypeBeautySalon,
    SPPlaceTypeBicycleStore,
    SPPlaceTypeBookStore,
    SPPlaceTypeBowlingAlley,
    SPPlaceTypeBusStation,
    SPPlaceTypeCafe,
    SPPlaceTypeCampground,
    SPPlaceTypeCarDealer,
    SPPlaceTypeCarRental,
    SPPlaceTypeCarRepair,
    SPPlaceTypeCarWash,
    SPPlaceTypeCasino,
    SPPlaceTypeCemetery,
    SPPlaceTypeChurch,
    SPPlaceTypeCityHall,
    SPPlaceTypeClothingStore,
    SPPlaceTypeColloquialArea,
    SPPlaceTypeConvenienceStore,
    SPPlaceTypeCountry,
    SPPlaceTypeCourthouse,
    SPPlaceTypeDentist,
    SPPlaceTypeDepartmentStore,
    SPPlaceTypeDoctor,
    SPPlaceTypeElectrician,
    SPPlaceTypeElectronicsStore,
    SPPlaceTypeEmbassy,
    SPPlaceTypeEstablishment,
    SPPlaceTypeFinance,
    SPPlaceTypeFireStation,
    SPPlaceTypeFloor,
    SPPlaceTypeFlorist,
    SPPlaceTypeFood,
    SPPlaceTypeFuneralHome,
    SPPlaceTypeFurnitureStore,
    SPPlaceTypeGasStation,
    SPPlaceTypeGeneralContractor,
    SPPlaceTypeGeocode,
    SPPlaceTypeGroceryOrSupermarket,
    SPPlaceTypeGym,
    SPPlaceTypeHairCare,
    SPPlaceTypeHardwareStore,
    SPPlaceTypeHealth,
    SPPlaceTypeHinduTemple,
    SPPlaceTypeHomeGoodsStore,
    SPPlaceTypeHospital,
    SPPlaceTypeInsuranceAgency,
    SPPlaceTypeIntersection,
    SPPlaceTypeJewelryStore,
    SPPlaceTypeLaundry,
    SPPlaceTypeLawyer,
    SPPlaceTypeLibrary,
    SPPlaceTypeLiquorStore,
    SPPlaceTypeLocalGovernmentOffice,
    SPPlaceTypeLocality,
    SPPlaceTypeLocksmith,
    SPPlaceTypeLodging,
    SPPlaceTypeMealDelivery,
    SPPlaceTypeMealTakeaway,
    SPPlaceTypeMosque,
    SPPlaceTypeMovieRental,
    SPPlaceTypeMovieTheater,
    SPPlaceTypeMovingCompany,
    SPPlaceTypeMuseum,
    SPPlaceTypeNaturalFeature,
    SPPlaceTypeNeighborhood,
    SPPlaceTypeNightClub,
    SPPlaceTypePainter,
    SPPlaceTypePark,
    SPPlaceTypeParking,
    SPPlaceTypePetStore,
    SPPlaceTypePharmacy,
    SPPlaceTypePhysiotherapist,
    SPPlaceTypePlaceOfWorship,
    SPPlaceTypePlumber,
    SPPlaceTypePointOfInterest,
    SPPlaceTypePolice,
    SPPlaceTypePolitical,
    SPPlaceTypePostBox,
    SPPlaceTypePostOffice,
    SPPlaceTypePostalCode,
    SPPlaceTypePostalCodePrefix,
    SPPlaceTypePostalTown,
    SPPlaceTypePremise,
    SPPlaceTypeRealEstateAgency,
    SPPlaceTypeRestaurant,
    SPPlaceTypeRoofingContractor,
    SPPlaceTypeRoom,
    SPPlaceTypeRoute,
    SPPlaceTypeRvPark,
    SPPlaceTypeSchool,
    SPPlaceTypeShoeStore,
    SPPlaceTypeShoppingMall,
    SPPlaceTypeSpa,
    SPPlaceTypeStadium,
    SPPlaceTypeStorage,
    SPPlaceTypeStore,
    SPPlaceTypeStreetAddress,
    SPPlaceTypeStreetNumber,
    SPPlaceTypeSublocality,
    SPPlaceTypeSublocalityLevel1,
    SPPlaceTypeSublocalityLevel2,
    SPPlaceTypeSublocalityLevel3,
    SPPlaceTypeSublocalityLevel4,
    SPPlaceTypeSublocalityLevel5,
    SPPlaceTypeSubpremise,
    SPPlaceTypeSubwayStation,
    SPPlaceTypeSynagogue,
    SPPlaceTypeTaxiStand,
    SPPlaceTypeTrainStation,
    SPPlaceTypeTransitStation,
    SPPlaceTypeTravelAgency,
    SPPlaceTypeUniversity,
    SPPlaceTypeVeterinaryCare,
    SPPlaceTypeZoo
};

typedef void (^SPGooglePlacesPlacemarkResultBlock)(SPGooglePlacemark *placemark, NSError *error);
typedef void (^SPGooglePlacesAutocompleteResultBlock)(NSArray *places, NSError *error);
typedef void (^SPGooglePlacesPlaceDetailResultBlock)(NSDictionary *placeDictionary, NSError *error);

extern NSDictionary *SPGetMatchingDictionaryType();
extern NSArray  *SPPlaceTypeFromDictionary(NSDictionary *placeDictionary);
extern NSString *SPBooleanStringForBool(BOOL boolean);
extern NSArray  *SPPlaceTypeStringForPlaceTypes(NSArray *types);
extern NSString *SPPlaceTypeStringForAutocompleteFilterPlaceType(SPGooglePlacesAutocompleteFilterPlaceType type);
extern BOOL SPIsEmptyString(NSString *string);

@interface NSArray(SPFoundationAdditions)
- (id)onlyObject;
@end