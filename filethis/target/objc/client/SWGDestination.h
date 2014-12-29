#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGDestination : SWGObject

@property(nonatomic) NSString* name;  /* Human-readable name of the destination. [RO] [optional]*/

@property(nonatomic) NSNumber* _id;  /* Unique Id for the destination. [RO] [optional]*/

@property(nonatomic) NSString* state;  /* Whether the destination is exposed to the public or not. [RO] [optional]*/

@property(nonatomic) NSString* type;  /* Type of destination (FileThis Cloud, external provider, or FileThis desktop). [RO] [optional]*/

@property(nonatomic) NSString* provider;  /* The storage provider. [RO] [optional]*/

@property(nonatomic) NSString* logo;  /* Filename of provider's company logo. [RO] [optional]*/

@property(nonatomic) NSString* url;  /* Link to the provider's website. [RO] [optional]*/

@property(nonatomic) NSString* helpUrl;  /* URL for FileThis help page that describes the destination. [RO] [optional]*/

@property(nonatomic) NSString* iosAppId;  /* Application Id for iOS mobile app. [RO] [optional]*/

@property(nonatomic) NSString* androidAppId;  /* Application Id for Android mobile app. [RO] [optional]*/

@property(nonatomic) NSString* appUrl;  /* Default web page for mobile app store. [RO] [optional]*/

@property(nonatomic) NSNumber* ordinal;  /* An ordinal number that suggests a preferred order for display to users. [RO] [optional]*/

@property(nonatomic) NSString* logoUrl;  /* URL of destination's company logo. [RO] [optional]*/

- (id) name: (NSString*) name
     _id: (NSNumber*) _id
     state: (NSString*) state
     type: (NSString*) type
     provider: (NSString*) provider
     logo: (NSString*) logo
     url: (NSString*) url
     helpUrl: (NSString*) helpUrl
     iosAppId: (NSString*) iosAppId
     androidAppId: (NSString*) androidAppId
     appUrl: (NSString*) appUrl
     ordinal: (NSNumber*) ordinal
     logoUrl: (NSString*) logoUrl;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

