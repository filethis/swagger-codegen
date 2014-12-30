#import <Foundation/Foundation.h>
#import "SWGAccount.h"
#import "SWGCredentials.h"
#import "SWGConnection.h"
#import "SWGDestination.h"
#import "SWGInstitution.h"
#import "SWGDocument.h"



@interface SWGV1Api: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGV1Api*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Update account
 The 'password' query parameter is only required when changing the account password
 @param ticket Session ticket
 @param password Current password
 @param body Account object
 */
-(NSNumber*) putAccountWithCompletionBlock :(NSString*) ticket 
        password:(NSString*) password 
        body:(SWGAccount*) body 
        completionHandler : (void (^)(NSError* error))completionBlock;

/**

 Get account
 Notes here
 @param ticket Session ticket
 */
-(NSNumber*) getAccountWithCompletionBlock :(NSString*) ticket 
        completionHandler : (void (^)(SWGAccount* output, NSError* error))completionBlock;

/**

 Create a source connection
 By default, a fetch will be initiated as soon as a new connection is created.
 @param fetch fetch
 @param ticket Session ticket
 @param body Connection object
 */
-(NSNumber*) createConnectionDirectWithCompletionBlock :(NSString*) fetch 
        ticket:(NSString*) ticket 
        body:(SWGConnection*) body 
        completionHandler : (void (^)(SWGConnection* output, NSError* error))completionBlock;

/**

 Get all source connections
 Notes here
 @param ticket Session ticket
 */
-(NSNumber*) getConnectionsDirectWithCompletionBlock :(NSString*) ticket 
        completionHandler : (void (^)(SWGConnection* output, NSError* error))completionBlock;

/**

 Delete source connection
 Notes here
 @param connectionId Source Connection Id
 @param ticket Session ticket
 */
-(NSNumber*) deleteConnectionDirectWithCompletionBlock :(NSString*) connectionId 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(NSError* error))completionBlock;

/**

 Get source connection
 Notes here
 @param connectionId Source Connection Id
 @param ticket Session ticket
 */
-(NSNumber*) getConnectionDirectWithCompletionBlock :(NSString*) connectionId 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(SWGConnection* output, NSError* error))completionBlock;

/**

 Update credentials in source connection
 Notes here
 @param connectionId Source Connection Id
 @param ticket Session ticket
 @param body Credentials
 */
-(NSNumber*) putConnectionCredentialsDirectWithCompletionBlock :(NSString*) connectionId 
        ticket:(NSString*) ticket 
        body:(SWGCredentials*) body 
        completionHandler : (void (^)(NSError* error))completionBlock;

/**

 Initiate a fetch for source connection
 Notes here
 @param connectionId Source Connection Id
 @param all All
 @param ticket Session ticket
 */
-(NSNumber*) fetchDirectWithCompletionBlock :(NSString*) connectionId 
        all:(NSString*) all 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(NSError* error))completionBlock;

/**

 Get all destinations
 Notes here
 @param filtering Pro-Service filter
 @param ticket Session ticket
 */
-(NSNumber*) getDestinationsWithCompletionBlock :(NSString*) filtering 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(SWGDestination* output, NSError* error))completionBlock;

/**

 Get all documents
 Notes here
 @param sortProperty Sort property
 @param sortDirection Sort direction
 @param ticket Session ticket
 */
-(NSNumber*) getDocumentsDirectWithCompletionBlock :(NSString*) sortProperty 
        sortDirection:(NSString*) sortDirection 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(SWGDocument* output, NSError* error))completionBlock;

/**

 Get document
 Notes here
 @param documentId Document Id
 @param ticket Session ticket
 */
-(NSNumber*) getDocumentDirectWithCompletionBlock :(NSString*) documentId 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(SWGDocument* output, NSError* error))completionBlock;

/**

 Delete document
 Notes here
 @param documentId Document Id
 @param ticket Session ticket
 */
-(NSNumber*) deleteDocumentDirectWithCompletionBlock :(NSString*) documentId 
        ticket:(NSString*) ticket 
        completionHandler : (void (^)(NSError* error))completionBlock;

/**

 Update account
 Notes here
 @param documentId Document Id
 @param ticket Session ticket
 @param body Document object
 */
-(NSNumber*) putDocumentWithCompletionBlock :(NSString*) documentId 
        ticket:(NSString*) ticket 
        body:(SWGDocument*) body 
        completionHandler : (void (^)(NSError* error))completionBlock;

/**

 Get all sources
 Note that the name 'Institution' shown below will soon be changed to 'Source'
 @param ticket Session ticket
 */
-(NSNumber*) getSourcesWithCompletionBlock :(NSString*) ticket 
        completionHandler : (void (^)(SWGInstitution* output, NSError* error))completionBlock;

@end
