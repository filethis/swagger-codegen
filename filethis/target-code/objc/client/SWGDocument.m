#import "SWGDate.h"
#import "SWGDocument.h"

@implementation SWGDocument

-(id)name: (NSString*) name
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
    originalRelevantDate: (SWGDate-time*) originalRelevantDate
{
  _name = name;
  __id = _id;
  _size = size;
  _shared = shared;
  _mimeType = mimeType;
  _destinationId = destinationId;
  _accountId = accountId;
  _pageCount = pageCount;
  _kind = kind;
  _deliveryState = deliveryState;
  _relevantDate = relevantDate;
  _actionDate = actionDate;
  _createdDate = createdDate;
  _addedDate = addedDate;
  _deliveredDate = deliveredDate;
  _originalName = originalName;
  _originalRelevantDate = originalRelevantDate;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        __id = dict[@"id"]; 
        _size = dict[@"size"]; 
        _shared = dict[@"shared"]; 
        _mimeType = dict[@"mimeType"]; 
        _destinationId = dict[@"destinationId"]; 
        _accountId = dict[@"accountId"]; 
        _pageCount = dict[@"pageCount"]; 
        _kind = dict[@"kind"]; 
        _deliveryState = dict[@"deliveryState"]; 
        id relevantDate_dict = dict[@"relevantDate"];
        if(relevantDate_dict != nil)
            _relevantDate = [[SWGDate-time alloc]initWithValues:relevantDate_dict];
        id actionDate_dict = dict[@"actionDate"];
        if(actionDate_dict != nil)
            _actionDate = [[SWGDate-time alloc]initWithValues:actionDate_dict];
        id createdDate_dict = dict[@"createdDate"];
        if(createdDate_dict != nil)
            _createdDate = [[SWGDate-time alloc]initWithValues:createdDate_dict];
        id addedDate_dict = dict[@"addedDate"];
        if(addedDate_dict != nil)
            _addedDate = [[SWGDate-time alloc]initWithValues:addedDate_dict];
        id deliveredDate_dict = dict[@"deliveredDate"];
        if(deliveredDate_dict != nil)
            _deliveredDate = [[SWGDate-time alloc]initWithValues:deliveredDate_dict];
        _originalName = dict[@"originalName"]; 
        id originalRelevantDate_dict = dict[@"originalRelevantDate"];
        if(originalRelevantDate_dict != nil)
            _originalRelevantDate = [[SWGDate-time alloc]initWithValues:originalRelevantDate_dict];
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
        if(__id != nil) dict[@"id"] = __id ;
        if(_size != nil) dict[@"size"] = _size ;
        if(_shared != nil) dict[@"shared"] = _shared ;
        if(_mimeType != nil) dict[@"mimeType"] = _mimeType ;
        if(_destinationId != nil) dict[@"destinationId"] = _destinationId ;
        if(_accountId != nil) dict[@"accountId"] = _accountId ;
        if(_pageCount != nil) dict[@"pageCount"] = _pageCount ;
        if(_kind != nil) dict[@"kind"] = _kind ;
        if(_deliveryState != nil) dict[@"deliveryState"] = _deliveryState ;
        if(_relevantDate != nil){
        if([_relevantDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *relevantDate in (NSArray*)_relevantDate) {
                [array addObject:[(SWGObject*)relevantDate asDictionary]];
            }
            dict[@"relevantDate"] = array;
        }
        else if(_relevantDate && [_relevantDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_relevantDate toString];
            if(dateString){
                dict[@"relevantDate"] = dateString;
            }
        }
        else {
        if(_relevantDate != nil) dict[@"relevantDate"] = [(SWGObject*)_relevantDate asDictionary];
        }
    }
    if(_actionDate != nil){
        if([_actionDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *actionDate in (NSArray*)_actionDate) {
                [array addObject:[(SWGObject*)actionDate asDictionary]];
            }
            dict[@"actionDate"] = array;
        }
        else if(_actionDate && [_actionDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_actionDate toString];
            if(dateString){
                dict[@"actionDate"] = dateString;
            }
        }
        else {
        if(_actionDate != nil) dict[@"actionDate"] = [(SWGObject*)_actionDate asDictionary];
        }
    }
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
    if(_deliveredDate != nil){
        if([_deliveredDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *deliveredDate in (NSArray*)_deliveredDate) {
                [array addObject:[(SWGObject*)deliveredDate asDictionary]];
            }
            dict[@"deliveredDate"] = array;
        }
        else if(_deliveredDate && [_deliveredDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_deliveredDate toString];
            if(dateString){
                dict[@"deliveredDate"] = dateString;
            }
        }
        else {
        if(_deliveredDate != nil) dict[@"deliveredDate"] = [(SWGObject*)_deliveredDate asDictionary];
        }
    }
    if(_originalName != nil) dict[@"originalName"] = _originalName ;
        if(_originalRelevantDate != nil){
        if([_originalRelevantDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate-time *originalRelevantDate in (NSArray*)_originalRelevantDate) {
                [array addObject:[(SWGObject*)originalRelevantDate asDictionary]];
            }
            dict[@"originalRelevantDate"] = array;
        }
        else if(_originalRelevantDate && [_originalRelevantDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_originalRelevantDate toString];
            if(dateString){
                dict[@"originalRelevantDate"] = dateString;
            }
        }
        else {
        if(_originalRelevantDate != nil) dict[@"originalRelevantDate"] = [(SWGObject*)_originalRelevantDate asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

