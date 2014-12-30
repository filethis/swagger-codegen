#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate-time.h"


@interface SWGAccount : SWGObject

@property(nonatomic) NSNumber* _id;  /* Unique Id. Returned as a string. [RO] [optional]*/

@property(nonatomic) NSString* type;  /* FileThis account type. [RO] [optional]*/

@property(nonatomic) NSString* level;  /* FileThis account level. [RO] [optional]*/

@property(nonatomic) NSString* password;  /* FileThis account password. [WO] [optional]*/

@property(nonatomic) NSString* email;  /* User email (Also used for FileThis login). [optional]*/

@property(nonatomic) NSNumber* partnerId;  /* Unique Id of account's Content Delivery Partner. Returned as a string. [RO] [optional]*/

@property(nonatomic) NSNumber* proServiceId;  /* Unique Id of Pro-Service. [RO] [optional]*/

@property(nonatomic) NSString* firstName;  /* User's first name [optional]*/

@property(nonatomic) NSNumber* useTimeout;  /* Flag to enable/disable session timeout [optional]*/

@property(nonatomic) NSNumber* timeoutMinutes;  /* Session timeout duration [optional]*/

@property(nonatomic) NSString* lastName;  /* User's last name [optional]*/

@property(nonatomic) NSNumber* autoClassify;  /* Whether to automatically classify (tag) fetched documents, or not. [optional]*/

@property(nonatomic) NSNumber* emailSuccess;  /* Send email when a fetch succeeds [optional]*/

@property(nonatomic) NSNumber* emailFailure;  /* Send email when a fetch fails [optional]*/

@property(nonatomic) NSNumber* emailCampaign;  /* Flag to subscribe/unsubscribe from marketing emails [optional]*/

@property(nonatomic) NSString* features;  /* Internal FileThis feature flags. Base64-encoded. [RO] [optional]*/

@property(nonatomic) NSArray* releaseDestinations;  

@property(nonatomic) NSString* plan;  /* Subscription plan. [RO] [optional]*/

@property(nonatomic) NSNumber* addons;  /* Number of 'add-on' packages purchased. [RO] [optional]*/

@property(nonatomic) NSNumber* pendingAddons;  /* Number of 'add-on' packages upon renewal. [RO] [optional]*/

@property(nonatomic) NSString* pendingPlan;  /* Subscription plan on renewal. [RO] [optional]*/

@property(nonatomic) NSNumber* renews;  /* Does the account's subscription plan renew?. [RO] [optional]*/

@property(nonatomic) NSObject* featuresAsMap;  

@property(nonatomic) NSNumber* addOnSourceConnectionQuota;  /* Additional source connections from add-ons. [RO] [optional]*/

@property(nonatomic) NSNumber* addOnStorageQuota;  /* Additional storage from add-ons in Kilobytes. [RO] [optional]*/

@property(nonatomic) NSString* brandingLogoUrl;  /* Pro-Services branding logo. [RO] [optional]*/

@property(nonatomic) NSString* brandingName;  /* Pro-Services branding name. [RO] [optional]*/

@property(nonatomic) SWGDate-time* createdDate;  /* Date created. [RO] [optional]*/

@property(nonatomic) SWGDate-time* expiresDate;  /* Date that the user's subscription plan expires. [RO] [optional]*/

@property(nonatomic) NSString* partnerAccountId;  /* Unique Id given to account by Content Delivery Partner. [RO] [optional]*/

@property(nonatomic) SWGDate-time* paymentDate;  /* Date payment made for subscription plan. [RO] [optional]*/

@property(nonatomic) NSNumber* pendingPlanSourceConnectionQuota;  /* Source connection quota for pending plan. [RO] [optional]*/

@property(nonatomic) NSNumber* pendingPlanStorageQuota;  /* Storage quota for pending plan in Kilobytes. [RO] [optional]*/

@property(nonatomic) NSNumber* priorClientIp;  /* IP address of user's previous login. [RO] [optional]*/

@property(nonatomic) NSNumber* priorLoginDate;  /* Date of user's previous login. [RO] [optional]*/

@property(nonatomic) NSNumber* referralSourceConnectionQuota;  /* Connection quota from referrals. [RO] [optional]*/

@property(nonatomic) NSNumber* referralStorageQuota;  /* Storage quota from referrals in Kilobytes. [RO] [optional]*/

@property(nonatomic) NSNumber* subscriptionSourceConnectionQuota;  /* Connection quota from subscription. [RO] [optional]*/

@property(nonatomic) NSNumber* subscriptionStorageQuota;  /* Storage quota from subscription in Kilobytes. [RO] [optional]*/

@property(nonatomic) NSString* socialMediaUrl;  /* Link for user to share FileThis. [RO] [optional]*/

@property(nonatomic) NSNumber* totalStorageQuota;  /* Total storage quota for account in Kilobytes. [RO] [optional]*/

@property(nonatomic) NSNumber* totalStorageUsage;  /* Total storage usage by account in Kilobytes. [RO] [optional]*/

@property(nonatomic) NSNumber* totalSourceConnectionQuota;  /* Total source connection quota for account. [RO] [optional]*/

@property(nonatomic) NSNumber* totalSourceConnectionUsage;  /* Total storage quota for account. [RO] [optional]*/

@property(nonatomic) NSString* uploadEmail;  /* Upload email address [RO] [optional]*/

@property(nonatomic) NSString* uploadUsername;  /* Upload user name [optional]*/

- (id) _id: (NSNumber*) _id
     type: (NSString*) type
     level: (NSString*) level
     password: (NSString*) password
     email: (NSString*) email
     partnerId: (NSNumber*) partnerId
     proServiceId: (NSNumber*) proServiceId
     firstName: (NSString*) firstName
     useTimeout: (NSNumber*) useTimeout
     timeoutMinutes: (NSNumber*) timeoutMinutes
     lastName: (NSString*) lastName
     autoClassify: (NSNumber*) autoClassify
     emailSuccess: (NSNumber*) emailSuccess
     emailFailure: (NSNumber*) emailFailure
     emailCampaign: (NSNumber*) emailCampaign
     features: (NSString*) features
     releaseDestinations: (NSArray*) releaseDestinations
     plan: (NSString*) plan
     addons: (NSNumber*) addons
     pendingAddons: (NSNumber*) pendingAddons
     pendingPlan: (NSString*) pendingPlan
     renews: (NSNumber*) renews
     featuresAsMap: (NSObject*) featuresAsMap
     addOnSourceConnectionQuota: (NSNumber*) addOnSourceConnectionQuota
     addOnStorageQuota: (NSNumber*) addOnStorageQuota
     brandingLogoUrl: (NSString*) brandingLogoUrl
     brandingName: (NSString*) brandingName
     createdDate: (SWGDate-time*) createdDate
     expiresDate: (SWGDate-time*) expiresDate
     partnerAccountId: (NSString*) partnerAccountId
     paymentDate: (SWGDate-time*) paymentDate
     pendingPlanSourceConnectionQuota: (NSNumber*) pendingPlanSourceConnectionQuota
     pendingPlanStorageQuota: (NSNumber*) pendingPlanStorageQuota
     priorClientIp: (NSNumber*) priorClientIp
     priorLoginDate: (NSNumber*) priorLoginDate
     referralSourceConnectionQuota: (NSNumber*) referralSourceConnectionQuota
     referralStorageQuota: (NSNumber*) referralStorageQuota
     subscriptionSourceConnectionQuota: (NSNumber*) subscriptionSourceConnectionQuota
     subscriptionStorageQuota: (NSNumber*) subscriptionStorageQuota
     socialMediaUrl: (NSString*) socialMediaUrl
     totalStorageQuota: (NSNumber*) totalStorageQuota
     totalStorageUsage: (NSNumber*) totalStorageUsage
     totalSourceConnectionQuota: (NSNumber*) totalSourceConnectionQuota
     totalSourceConnectionUsage: (NSNumber*) totalSourceConnectionUsage
     uploadEmail: (NSString*) uploadEmail
     uploadUsername: (NSString*) uploadUsername;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

