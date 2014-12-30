#import "SWGDate.h"
#import "SWGAccount.h"

@implementation SWGAccount

-(id)_id: (NSNumber*) _id
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
    uploadUsername: (NSString*) uploadUsername
{
  __id = _id;
  _type = type;
  _level = level;
  _password = password;
  _email = email;
  _partnerId = partnerId;
  _proServiceId = proServiceId;
  _firstName = firstName;
  _useTimeout = useTimeout;
  _timeoutMinutes = timeoutMinutes;
  _lastName = lastName;
  _autoClassify = autoClassify;
  _emailSuccess = emailSuccess;
  _emailFailure = emailFailure;
  _emailCampaign = emailCampaign;
  _features = features;
  _releaseDestinations = releaseDestinations;
  _plan = plan;
  _addons = addons;
  _pendingAddons = pendingAddons;
  _pendingPlan = pendingPlan;
  _renews = renews;
  _featuresAsMap = featuresAsMap;
  _addOnSourceConnectionQuota = addOnSourceConnectionQuota;
  _addOnStorageQuota = addOnStorageQuota;
  _brandingLogoUrl = brandingLogoUrl;
  _brandingName = brandingName;
  _createdDate = createdDate;
  _expiresDate = expiresDate;
  _partnerAccountId = partnerAccountId;
  _paymentDate = paymentDate;
  _pendingPlanSourceConnectionQuota = pendingPlanSourceConnectionQuota;
  _pendingPlanStorageQuota = pendingPlanStorageQuota;
  _priorClientIp = priorClientIp;
  _priorLoginDate = priorLoginDate;
  _referralSourceConnectionQuota = referralSourceConnectionQuota;
  _referralStorageQuota = referralStorageQuota;
  _subscriptionSourceConnectionQuota = subscriptionSourceConnectionQuota;
  _subscriptionStorageQuota = subscriptionStorageQuota;
  _socialMediaUrl = socialMediaUrl;
  _totalStorageQuota = totalStorageQuota;
  _totalStorageUsage = totalStorageUsage;
  _totalSourceConnectionQuota = totalSourceConnectionQuota;
  _totalSourceConnectionUsage = totalSourceConnectionUsage;
  _uploadEmail = uploadEmail;
  _uploadUsername = uploadUsername;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"]; 
        _type = dict[@"type"]; 
        _level = dict[@"level"]; 
        _password = dict[@"password"]; 
        _email = dict[@"email"]; 
        _partnerId = dict[@"partnerId"]; 
        _proServiceId = dict[@"proServiceId"]; 
        _firstName = dict[@"firstName"]; 
        _useTimeout = dict[@"useTimeout"]; 
        _timeoutMinutes = dict[@"timeoutMinutes"]; 
        _lastName = dict[@"lastName"]; 
        _autoClassify = dict[@"autoClassify"]; 
        _emailSuccess = dict[@"emailSuccess"]; 
        _emailFailure = dict[@"emailFailure"]; 
        _emailCampaign = dict[@"emailCampaign"]; 
        _features = dict[@"features"]; 
        id releaseDestinations_dict = dict[@"releaseDestinations"];
        if([releaseDestinations_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)releaseDestinations_dict count]];

            if([(NSArray*)releaseDestinations_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)releaseDestinations_dict) {
                    NSArray* d = [[NSArray alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _releaseDestinations = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _releaseDestinations = [[NSArray alloc] init];
            }
        }
        else {
            _releaseDestinations = [[NSArray alloc] init];
        }
        _plan = dict[@"plan"]; 
        _addons = dict[@"addons"]; 
        _pendingAddons = dict[@"pendingAddons"]; 
        _pendingPlan = dict[@"pendingPlan"]; 
        _renews = dict[@"renews"]; 
        _featuresAsMap = dict[@"featuresAsMap"]; 
        _addOnSourceConnectionQuota = dict[@"addOnSourceConnectionQuota"]; 
        _addOnStorageQuota = dict[@"addOnStorageQuota"]; 
        _brandingLogoUrl = dict[@"brandingLogoUrl"]; 
        _brandingName = dict[@"brandingName"]; 
        id createdDate_dict = dict[@"createdDate"];
        if(createdDate_dict != nil)
            _createdDate = [[SWGDate-time alloc]initWithValues:createdDate_dict];
        id expiresDate_dict = dict[@"expiresDate"];
        if(expiresDate_dict != nil)
            _expiresDate = [[SWGDate-time alloc]initWithValues:expiresDate_dict];
        _partnerAccountId = dict[@"partnerAccountId"]; 
        id paymentDate_dict = dict[@"paymentDate"];
        if(paymentDate_dict != nil)
            _paymentDate = [[SWGDate-time alloc]initWithValues:paymentDate_dict];
        _pendingPlanSourceConnectionQuota = dict[@"pendingPlanSourceConnectionQuota"]; 
        _pendingPlanStorageQuota = dict[@"pendingPlanStorageQuota"]; 
        _priorClientIp = dict[@"priorClientIp"]; 
        _priorLoginDate = dict[@"priorLoginDate"]; 
        _referralSourceConnectionQuota = dict[@"referralSourceConnectionQuota"]; 
        _referralStorageQuota = dict[@"referralStorageQuota"]; 
        _subscriptionSourceConnectionQuota = dict[@"subscriptionSourceConnectionQuota"]; 
        _subscriptionStorageQuota = dict[@"subscriptionStorageQuota"]; 
        _socialMediaUrl = dict[@"socialMediaUrl"]; 
        _totalStorageQuota = dict[@"totalStorageQuota"]; 
        _totalStorageUsage = dict[@"totalStorageUsage"]; 
        _totalSourceConnectionQuota = dict[@"totalSourceConnectionQuota"]; 
        _totalSourceConnectionUsage = dict[@"totalSourceConnectionUsage"]; 
        _uploadEmail = dict[@"uploadEmail"]; 
        _uploadUsername = dict[@"uploadUsername"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_type != nil) dict[@"type"] = _type ;
        if(_level != nil) dict[@"level"] = _level ;
        if(_password != nil) dict[@"password"] = _password ;
        if(_email != nil) dict[@"email"] = _email ;
        if(_partnerId != nil) dict[@"partnerId"] = _partnerId ;
        if(_proServiceId != nil) dict[@"proServiceId"] = _proServiceId ;
        if(_firstName != nil) dict[@"firstName"] = _firstName ;
        if(_useTimeout != nil) dict[@"useTimeout"] = _useTimeout ;
        if(_timeoutMinutes != nil) dict[@"timeoutMinutes"] = _timeoutMinutes ;
        if(_lastName != nil) dict[@"lastName"] = _lastName ;
        if(_autoClassify != nil) dict[@"autoClassify"] = _autoClassify ;
        if(_emailSuccess != nil) dict[@"emailSuccess"] = _emailSuccess ;
        if(_emailFailure != nil) dict[@"emailFailure"] = _emailFailure ;
        if(_emailCampaign != nil) dict[@"emailCampaign"] = _emailCampaign ;
        if(_features != nil) dict[@"features"] = _features ;
        if(_releaseDestinations != nil){
        if([_releaseDestinations isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( NSArray *releaseDestinations in (NSArray*)_releaseDestinations) {
                [array addObject:[(SWGObject*)releaseDestinations asDictionary]];
            }
            dict[@"releaseDestinations"] = array;
        }
        else if(_releaseDestinations && [_releaseDestinations isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_releaseDestinations toString];
            if(dateString){
                dict[@"releaseDestinations"] = dateString;
            }
        }
        else {
        if(_releaseDestinations != nil) dict[@"releaseDestinations"] = [(SWGObject*)_releaseDestinations asDictionary];
        }
    }
    if(_plan != nil) dict[@"plan"] = _plan ;
        if(_addons != nil) dict[@"addons"] = _addons ;
        if(_pendingAddons != nil) dict[@"pendingAddons"] = _pendingAddons ;
        if(_pendingPlan != nil) dict[@"pendingPlan"] = _pendingPlan ;
        if(_renews != nil) dict[@"renews"] = _renews ;
        if(_featuresAsMap != nil) dict[@"featuresAsMap"] = _featuresAsMap ;
        if(_addOnSourceConnectionQuota != nil) dict[@"addOnSourceConnectionQuota"] = _addOnSourceConnectionQuota ;
        if(_addOnStorageQuota != nil) dict[@"addOnStorageQuota"] = _addOnStorageQuota ;
        if(_brandingLogoUrl != nil) dict[@"brandingLogoUrl"] = _brandingLogoUrl ;
        if(_brandingName != nil) dict[@"brandingName"] = _brandingName ;
        if(_createdDate != nil){
        if([_createdDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *createdDate in (NSArray*)_createdDate) {
                [array addObject:[(SWGObject*)createdDate asDictionary]];
            }
            dict[@"createdDate"] = array;
        }
        else if(_createdDate && [_createdDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_createdDate toString];
            if(dateString){
                dict[@"createdDate"] = dateString;
            }
        }
        else {
        if(_createdDate != nil) dict[@"createdDate"] = [(SWGObject*)_createdDate asDictionary];
        }
    }
    if(_expiresDate != nil){
        if([_expiresDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *expiresDate in (NSArray*)_expiresDate) {
                [array addObject:[(SWGObject*)expiresDate asDictionary]];
            }
            dict[@"expiresDate"] = array;
        }
        else if(_expiresDate && [_expiresDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_expiresDate toString];
            if(dateString){
                dict[@"expiresDate"] = dateString;
            }
        }
        else {
        if(_expiresDate != nil) dict[@"expiresDate"] = [(SWGObject*)_expiresDate asDictionary];
        }
    }
    if(_partnerAccountId != nil) dict[@"partnerAccountId"] = _partnerAccountId ;
        if(_paymentDate != nil){
        if([_paymentDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *paymentDate in (NSArray*)_paymentDate) {
                [array addObject:[(SWGObject*)paymentDate asDictionary]];
            }
            dict[@"paymentDate"] = array;
        }
        else if(_paymentDate && [_paymentDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_paymentDate toString];
            if(dateString){
                dict[@"paymentDate"] = dateString;
            }
        }
        else {
        if(_paymentDate != nil) dict[@"paymentDate"] = [(SWGObject*)_paymentDate asDictionary];
        }
    }
    if(_pendingPlanSourceConnectionQuota != nil) dict[@"pendingPlanSourceConnectionQuota"] = _pendingPlanSourceConnectionQuota ;
        if(_pendingPlanStorageQuota != nil) dict[@"pendingPlanStorageQuota"] = _pendingPlanStorageQuota ;
        if(_priorClientIp != nil) dict[@"priorClientIp"] = _priorClientIp ;
        if(_priorLoginDate != nil) dict[@"priorLoginDate"] = _priorLoginDate ;
        if(_referralSourceConnectionQuota != nil) dict[@"referralSourceConnectionQuota"] = _referralSourceConnectionQuota ;
        if(_referralStorageQuota != nil) dict[@"referralStorageQuota"] = _referralStorageQuota ;
        if(_subscriptionSourceConnectionQuota != nil) dict[@"subscriptionSourceConnectionQuota"] = _subscriptionSourceConnectionQuota ;
        if(_subscriptionStorageQuota != nil) dict[@"subscriptionStorageQuota"] = _subscriptionStorageQuota ;
        if(_socialMediaUrl != nil) dict[@"socialMediaUrl"] = _socialMediaUrl ;
        if(_totalStorageQuota != nil) dict[@"totalStorageQuota"] = _totalStorageQuota ;
        if(_totalStorageUsage != nil) dict[@"totalStorageUsage"] = _totalStorageUsage ;
        if(_totalSourceConnectionQuota != nil) dict[@"totalSourceConnectionQuota"] = _totalSourceConnectionQuota ;
        if(_totalSourceConnectionUsage != nil) dict[@"totalSourceConnectionUsage"] = _totalSourceConnectionUsage ;
        if(_uploadEmail != nil) dict[@"uploadEmail"] = _uploadEmail ;
        if(_uploadUsername != nil) dict[@"uploadUsername"] = _uploadUsername ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

