#import "SWGDate.h"
#import "SWGDestination.h"

@implementation SWGDestination

-(id)name: (NSString*) name
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
    logoUrl: (NSString*) logoUrl
{
  _name = name;
  __id = _id;
  _state = state;
  _type = type;
  _provider = provider;
  _logo = logo;
  _url = url;
  _helpUrl = helpUrl;
  _iosAppId = iosAppId;
  _androidAppId = androidAppId;
  _appUrl = appUrl;
  _ordinal = ordinal;
  _logoUrl = logoUrl;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        __id = dict[@"id"]; 
        _state = dict[@"state"]; 
        _type = dict[@"type"]; 
        _provider = dict[@"provider"]; 
        _logo = dict[@"logo"]; 
        _url = dict[@"url"]; 
        _helpUrl = dict[@"helpUrl"]; 
        _iosAppId = dict[@"iosAppId"]; 
        _androidAppId = dict[@"androidAppId"]; 
        _appUrl = dict[@"appUrl"]; 
        _ordinal = dict[@"ordinal"]; 
        _logoUrl = dict[@"logoUrl"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
        if(__id != nil) dict[@"id"] = __id ;
        if(_state != nil) dict[@"state"] = _state ;
        if(_type != nil) dict[@"type"] = _type ;
        if(_provider != nil) dict[@"provider"] = _provider ;
        if(_logo != nil) dict[@"logo"] = _logo ;
        if(_url != nil) dict[@"url"] = _url ;
        if(_helpUrl != nil) dict[@"helpUrl"] = _helpUrl ;
        if(_iosAppId != nil) dict[@"iosAppId"] = _iosAppId ;
        if(_androidAppId != nil) dict[@"androidAppId"] = _androidAppId ;
        if(_appUrl != nil) dict[@"appUrl"] = _appUrl ;
        if(_ordinal != nil) dict[@"ordinal"] = _ordinal ;
        if(_logoUrl != nil) dict[@"logoUrl"] = _logoUrl ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

