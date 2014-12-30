#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate-time.h"


@interface SWGConnection : SWGObject

@property(nonatomic) NSString* name;  /* Human-readable name of the connection. Defaults to that of its source. [optional]*/

@property(nonatomic) NSNumber* _id;  /* The unique Id of the connection. Returned as a string. [RO] [optional]*/

@property(nonatomic) NSString* state;  /* The current state of the connection. [RO] [optional]*/

@property(nonatomic) NSNumber* enabled;  /* Whether fetches will be done for the connection not [optional]*/

@property(nonatomic) NSString* info;  /* Information concerning the connection that resulted from the last fetch. [RO] [optional]*/

@property(nonatomic) NSString* password;  /* The connection source's site login password. Base64-encoded. [WO] [optional]*/

@property(nonatomic) NSString* username;  /* The connection source's site login username. Base64-encoded. [WO] [optional]*/

@property(nonatomic) NSNumber* accountId;  /* Unique Id of connection's account. Returned as a string. [RO] [optional]*/

@property(nonatomic) NSString* validation;  /* Whether the current connection source's site login credentials have been used successfully, or not. [RO] [optional]*/

@property(nonatomic) NSString* period;  /* The period of time between automatic fetches. [WO] [optional]*/

@property(nonatomic) NSNumber* documentCount;  /* The number of new documents downloaded during the last fetch. [RO] [optional]*/

@property(nonatomic) NSNumber* fetchAll;  /* Whether all documents should be fetched, or just any new ones [optional]*/

@property(nonatomic) SWGDate-time* attemptDate;  /* Date on which the next fetch attempt will happen. [RO] [optional]*/

@property(nonatomic) SWGDate-time* checkedDate;  /* Date when last checked for new documents. [RO] [optional]*/

@property(nonatomic) NSNumber* sourceId;  /* Unique Id of connection's document source. Returned as a string. [RO] [optional]*/

@property(nonatomic) SWGDate-time* successDate;  /* Date of last successful fetch, whether it returned documents, or not. [RO] [optional]*/

- (id) name: (NSString*) name
     _id: (NSNumber*) _id
     state: (NSString*) state
     enabled: (NSNumber*) enabled
     info: (NSString*) info
     password: (NSString*) password
     username: (NSString*) username
     accountId: (NSNumber*) accountId
     validation: (NSString*) validation
     period: (NSString*) period
     documentCount: (NSNumber*) documentCount
     fetchAll: (NSNumber*) fetchAll
     attemptDate: (SWGDate-time*) attemptDate
     checkedDate: (SWGDate-time*) checkedDate
     sourceId: (NSNumber*) sourceId
     successDate: (SWGDate-time*) successDate;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

