#import "SWGDate.h"
#import "SWGInstitution.h"

@implementation SWGInstitution

-(id)name: (NSString*) name
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
    addedDate: (SWGDate-time*) addedDate
{
  _name = name;
  __id = _id;
  _state = state;
  _type = type;
  _info = info;
  _popularity = popularity;
  _homePageUrl = homePageUrl;
  _phone = phone;
  _logo = logo;
  _fid = fid;
  _logoUrl = logoUrl;
  _addedDate = addedDate;
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
        _info = dict[@"info"]; 
        _popularity = dict[@"popularity"]; 
        _homePageUrl = dict[@"homePageUrl"]; 
        _phone = dict[@"phone"]; 
        _logo = dict[@"logo"]; 
        _fid = dict[@"fid"]; 
        _logoUrl = dict[@"logoUrl"]; 
        id addedDate_dict = dict[@"addedDate"];
        if(addedDate_dict != nil)
            _addedDate = [[SWGDate-time alloc]initWithValues:addedDate_dict];
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
        if(__id != nil) dict[@"id"] = __id ;
        if(_state != nil) dict[@"state"] = _state ;
        if(_type != nil) dict[@"type"] = _type ;
        if(_info != nil) dict[@"info"] = _info ;
        if(_popularity != nil) dict[@"popularity"] = _popularity ;
        if(_homePageUrl != nil) dict[@"homePageUrl"] = _homePageUrl ;
        if(_phone != nil) dict[@"phone"] = _phone ;
        if(_logo != nil) dict[@"logo"] = _logo ;
        if(_fid != nil) dict[@"fid"] = _fid ;
        if(_logoUrl != nil) dict[@"logoUrl"] = _logoUrl ;
        if(_addedDate != nil){
        if([_addedDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *addedDate in (NSArray*)_addedDate) {
                [array addObject:[(SWGObject*)addedDate asDictionary]];
            }
            dict[@"addedDate"] = array;
        }
        else if(_addedDate && [_addedDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_addedDate toString];
            if(dateString){
                dict[@"addedDate"] = dateString;
            }
        }
        else {
        if(_addedDate != nil) dict[@"addedDate"] = [(SWGObject*)_addedDate asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

