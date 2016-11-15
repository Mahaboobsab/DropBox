///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGRequestedVisibility.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGRequestedVisibility

#pragma mark - Constructors

- (instancetype)initWithPublic {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRequestedVisibilityPublic;
  }
  return self;
}

- (instancetype)initWithTeamOnly {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRequestedVisibilityTeamOnly;
  }
  return self;
}

- (instancetype)initWithPassword {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRequestedVisibilityPassword;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isPublic {
  return _tag == DBSHARINGRequestedVisibilityPublic;
}

- (BOOL)isTeamOnly {
  return _tag == DBSHARINGRequestedVisibilityTeamOnly;
}

- (BOOL)isPassword {
  return _tag == DBSHARINGRequestedVisibilityPassword;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGRequestedVisibilityPublic:
    return @"DBSHARINGRequestedVisibilityPublic";
  case DBSHARINGRequestedVisibilityTeamOnly:
    return @"DBSHARINGRequestedVisibilityTeamOnly";
  case DBSHARINGRequestedVisibilityPassword:
    return @"DBSHARINGRequestedVisibilityPassword";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGRequestedVisibilitySerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGRequestedVisibilitySerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGRequestedVisibilitySerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGRequestedVisibilitySerializer

+ (NSDictionary *)serialize:(DBSHARINGRequestedVisibility *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPublic]) {
    jsonDict[@".tag"] = @"public";
  } else if ([valueObj isTeamOnly]) {
    jsonDict[@".tag"] = @"team_only";
  } else if ([valueObj isPassword]) {
    jsonDict[@".tag"] = @"password";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGRequestedVisibility *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"public"]) {
    return [[DBSHARINGRequestedVisibility alloc] initWithPublic];
  } else if ([tag isEqualToString:@"team_only"]) {
    return [[DBSHARINGRequestedVisibility alloc] initWithTeamOnly];
  } else if ([tag isEqualToString:@"password"]) {
    return [[DBSHARINGRequestedVisibility alloc] initWithPassword];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
