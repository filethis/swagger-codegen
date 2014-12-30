#import "SWGDate.h"
#import "SWGConnection.h"

@implementation SWGConnection

-(id)name: (NSString*) name
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
    successDate: (SWGDate-time*) successDate
{
  _name = name;
  __id = _id;
  _state = state;
  _enabled = enabled;
  _info = info;
  _password = password;
  _username = username;
  _accountId = accountId;
  _validation = validation;
  _period = period;
  _documentCount = documentCount;
  _fetchAll = fetchAll;
  _attemptDate = attemptDate;
  _checkedDate = checkedDate;
  _sourceId = sourceId;
  _successDate = successDate;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        __id = dict[@"id"]; 
        _state = dict[@"state"]; 
        _enabled = dict[@"enabled"]; 
        _info = dict[@"info"]; 
        _password = dict[@"password"]; 
        _username = dict[@"username"]; 
        _accountId = dict[@"accountId"]; 
        _validation = dict[@"validation"]; 
        _period = dict[@"period"]; 
        _documentCount = dict[@"documentCount"]; 
        _fetchAll = dict[@"fetchAll"]; 
        id attemptDate_dict = dict[@"attemptDate"];
        if(attemptDate_dict != nil)
            _attemptDate = [[SWGDate-time alloc]initWithValues:attemptDate_dict];
        id checkedDate_dict = dict[@"checkedDate"];
        if(checkedDate_dict != nil)
            _checkedDate = [[SWGDate-time alloc]initWithValues:checkedDate_dict];
        _sourceId = dict[@"sourceId"]; 
        id successDate_dict = dict[@"successDate"];
        if(successDate_dict != nil)
            _successDate = [[SWGDate-time alloc]initWithValues:successDate_dict];
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
        if(__id != nil) dict[@"id"] = __id ;
        if(_state != nil) dict[@"state"] = _state ;
        if(_enabled != nil) dict[@"enabled"] = _enabled ;
        if(_info != nil) dict[@"info"] = _info ;
        if(_password != nil) dict[@"password"] = _password ;
        if(_username != nil) dict[@"username"] = _username ;
        if(_accountId != nil) dict[@"accountId"] = _accountId ;
        if(_validation != nil) dict[@"validation"] = _validation ;
        if(_period != nil) dict[@"period"] = _period ;
        if(_documentCount != nil) dict[@"documentCount"] = _documentCount ;
        if(_fetchAll != nil) dict[@"fetchAll"] = _fetchAll ;
        if(_attemptDate != nil){
        if([_attemptDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *attemptDate in (NSArray*)_attemptDate) {
                [array addObject:[(SWGObject*)attemptDate asDictionary]];
            }
            dict[@"attemptDate"] = array;
        }
        else if(_attemptDate && [_attemptDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_attemptDate toString];
            if(dateString){
                dict[@"attemptDate"] = dateString;
            }
        }
        else {
        if(_attemptDate != nil) dict[@"attemptDate"] = [(SWGObject*)_attemptDate asDictionary];
        }
    }
    if(_checkedDate != nil){
        if([_checkedDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *checkedDate in (NSArray*)_checkedDate) {
                [array addObject:[(SWGObject*)checkedDate asDictionary]];
            }
            dict[@"checkedDate"] = array;
        }
        else if(_checkedDate && [_checkedDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_checkedDate toString];
            if(dateString){
                dict[@"checkedDate"] = dateString;
            }
        }
        else {
        if(_checkedDate != nil) dict[@"checkedDate"] = [(SWGObject*)_checkedDate asDictionary];
        }
    }
    if(_sourceId != nil) dict[@"sourceId"] = _sourceId ;
        if(_successDate != nil){
        if([_successDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *successDate in (NSArray*)_successDate) {
                [array addObject:[(SWGObject*)successDate asDictionary]];
            }
            dict[@"successDate"] = array;
        }
        else if(_successDate && [_successDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_successDate toString];
            if(dateString){
                dict[@"successDate"] = dateString;
            }
        }
        else {
        if(_successDate != nil) dict[@"successDate"] = [(SWGObject*)_successDate asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

