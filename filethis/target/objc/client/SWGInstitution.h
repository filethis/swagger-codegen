#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate-time.h"


@interface SWGInstitution : SWGObject

@property(nonatomic) NSString* name;  /* Human-readable name of the source. [RO] [optional]*/

@property(nonatomic) NSNumber* _id;  /* The unique Id of the source. [RO] [optional]*/

@property(nonatomic) NSString* state;  /* Whether the source is enabled for fetching, or not. [RO] [optional]*/

@property(nonatomic) NSString* type;  /* The type of institution. [RO] [optional]*/

@property(nonatomic) NSString* info;  /* A string to be displayed to users that gives special instructions. [RO] [optional]*/

@property(nonatomic) NSNumber* popularity;  /* An integer representing the relative popularity of this source. [RO] [optional]*/

@property(nonatomic) NSString* homePageUrl;  /* Link for the home page of the source's website. [RO] [optional]*/

@property(nonatomic) NSString* phone;  /* A phone number for the source institution. [RO] [optional]*/

@property(nonatomic) NSString* logo;  /* Filename of institution's company logo. [RO] [optional]*/

@property(nonatomic) NSString* fid;  /* The 'financial institution id' for the source. [RO] [optional]*/

@property(nonatomic) NSString* logoUrl;  /* URL of institution's company logo. [RO] [optional]*/

@property(nonatomic) SWGDate-time* addedDate;  /* Date that the source was added to FileThis. [RO] [optional]*/

- (id) name: (NSString*) name
     _id: (NSNumber*) _id
     state: (NSString*) state
     type: (NSString*) type
     info: (NSString*) info
     popularity: (NSNumber*) popularity
     homePageUrl: (NSString*) homePageUrl
     phone: (NSString*) phone
     logo: (NSString*) logo
     fid: (NSString*) fid
     logoUrl: (NSString*) logoUrl
     addedDate: (SWGDate-time*) addedDate;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

