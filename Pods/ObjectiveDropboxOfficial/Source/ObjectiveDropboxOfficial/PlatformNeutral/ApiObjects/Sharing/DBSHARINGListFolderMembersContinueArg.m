///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGListFolderMembersContinueArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGListFolderMembersContinueArg

#pragma mark - Constructors

- (instancetype)initWithCursor:(NSString *)cursor {

  self = [super init];
  if (self) {
    _cursor = cursor;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGListFolderMembersContinueArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGListFolderMembersContinueArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGListFolderMembersContinueArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGListFolderMembersContinueArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGListFolderMembersContinueArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"cursor"] = valueObj.cursor;

  return jsonDict;
}

+ (DBSHARINGListFolderMembersContinueArg *)deserialize:(NSDictionary *)valueDict {
  NSString *cursor = valueDict[@"cursor"];

  return [[DBSHARINGListFolderMembersContinueArg alloc] initWithCursor:cursor];
}

@end
