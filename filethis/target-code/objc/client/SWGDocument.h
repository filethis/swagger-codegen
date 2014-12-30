#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate-time.h"


@interface SWGDocument : SWGObject

@property(nonatomic) NSString* name;  /* Name of the document (default is typically its filename) [optional]*/

@property(nonatomic) NSNumber* _id;  /* Unique Id of the document. Returned as a string. [RO] [optional]*/

@property(nonatomic) NSNumber* size;  /* Size of the document file in bytes. [RO] [optional]*/

@property(nonatomic) NSNumber* shared;  /* Whether this is a Pro-Services shared document, or not. [RO] [optional]*/

@property(nonatomic) NSString* mimeType;  /* MIME type of the document. [RO] [optional]*/

@property(nonatomic) NSNumber* destinationId;  /* Unique Id of the destination to which the document was delivered. [RO] [optional]*/

@property(nonatomic) NSNumber* accountId;  /* Unique Id of document's account. Returned as a string. [RO] [optional]*/

@property(nonatomic) NSNumber* pageCount;  /* Number of pages in the document. [RO] [optional]*/

@property(nonatomic) NSString* kind;  /* Kind of document. [RO] [optional]*/

@property(nonatomic) NSString* deliveryState;  /* Delivery state. [RO] [optional]*/

@property(nonatomic) SWGDate-time* relevantDate;  /* Relevant date of document [optional]*/

@property(nonatomic) SWGDate-time* actionDate;  /* The date on which an action can be taken on a document (eg. Credit card payment due). [RO] [optional]*/

@property(nonatomic) SWGDate-time* createdDate;  /* Date that the document was originally created. [RO] [optional]*/

@property(nonatomic) SWGDate-time* addedDate;  /* Date that the document was added to FileThis. [RO] [optional]*/

@property(nonatomic) SWGDate-time* deliveredDate;  /* Date the document was delivered to its destination. [RO] [optional]*/

@property(nonatomic) NSString* originalName;  /* The original name of the document (typically its filename). [RO] [optional]*/

@property(nonatomic) SWGDate-time* originalRelevantDate;  /* Relevant date determined by fetcher. [RO] [optional]*/

- (id) name: (NSString*) name
     _id: (NSNumber*) _id
     size: (NSNumber*) size
     shared: (NSNumber*) shared
     mimeType: (NSString*) mimeType
     destinationId: (NSNumber*) destinationId
     accountId: (NSNumber*) accountId
     pageCount: (NSNumber*) pageCount
     kind: (NSString*) kind
     deliveryState: (NSString*) deliveryState
     relevantDate: (SWGDate-time*) relevantDate
     actionDate: (SWGDate-time*) actionDate
     createdDate: (SWGDate-time*) createdDate
     addedDate: (SWGDate-time*) addedDate
     deliveredDate: (SWGDate-time*) deliveredDate
     originalName: (NSString*) originalName
     originalRelevantDate: (SWGDate-time*) originalRelevantDate;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

