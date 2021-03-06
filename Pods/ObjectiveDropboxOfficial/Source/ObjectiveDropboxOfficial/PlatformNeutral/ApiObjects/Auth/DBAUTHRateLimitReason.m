///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBAUTHRateLimitReason.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBAUTHRateLimitReason

#pragma mark - Constructors

- (instancetype)initWithTooManyRequests {
  self = [super init];
  if (self) {
    _tag = DBAUTHRateLimitReasonTooManyRequests;
  }
  return self;
}

- (instancetype)initWithTooManyWriteOperations {
  self = [super init];
  if (self) {
    _tag = DBAUTHRateLimitReasonTooManyWriteOperations;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBAUTHRateLimitReasonOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isTooManyRequests {
  return _tag == DBAUTHRateLimitReasonTooManyRequests;
}

- (BOOL)isTooManyWriteOperations {
  return _tag == DBAUTHRateLimitReasonTooManyWriteOperations;
}

- (BOOL)isOther {
  return _tag == DBAUTHRateLimitReasonOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBAUTHRateLimitReasonTooManyRequests:
    return @"DBAUTHRateLimitReasonTooManyRequests";
  case DBAUTHRateLimitReasonTooManyWriteOperations:
    return @"DBAUTHRateLimitReasonTooManyWriteOperations";
  case DBAUTHRateLimitReasonOther:
    return @"DBAUTHRateLimitReasonOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBAUTHRateLimitReasonSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBAUTHRateLimitReasonSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBAUTHRateLimitReasonSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBAUTHRateLimitReasonSerializer

+ (NSDictionary *)serialize:(DBAUTHRateLimitReason *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isTooManyRequests]) {
    jsonDict[@".tag"] = @"too_many_requests";
  } else if ([valueObj isTooManyWriteOperations]) {
    jsonDict[@".tag"] = @"too_many_write_operations";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBAUTHRateLimitReason *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"too_many_requests"]) {
    return [[DBAUTHRateLimitReason alloc] initWithTooManyRequests];
  } else if ([tag isEqualToString:@"too_many_write_operations"]) {
    return [[DBAUTHRateLimitReason alloc] initWithTooManyWriteOperations];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBAUTHRateLimitReason alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
