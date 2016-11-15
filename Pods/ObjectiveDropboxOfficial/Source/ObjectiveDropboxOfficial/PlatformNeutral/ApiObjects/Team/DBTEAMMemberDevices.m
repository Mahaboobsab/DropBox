///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMActiveWebSession.h"
#import "DBTEAMDesktopClientSession.h"
#import "DBTEAMMemberDevices.h"
#import "DBTEAMMobileClientSession.h"

#pragma mark - API Object

@implementation DBTEAMMemberDevices

#pragma mark - Constructors

- (instancetype)initWithTeamMemberId:(NSString *)teamMemberId
                         webSessions:(NSArray<DBTEAMActiveWebSession *> *)webSessions
                      desktopClients:(NSArray<DBTEAMDesktopClientSession *> *)desktopClients
                       mobileClients:(NSArray<DBTEAMMobileClientSession *> *)mobileClients {
  [DBStoneValidators
   nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](webSessions);
  [DBStoneValidators
   nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](desktopClients);
  [DBStoneValidators
   nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](mobileClients);

  self = [super init];
  if (self) {
    _teamMemberId = teamMemberId;
    _webSessions = webSessions;
    _desktopClients = desktopClients;
    _mobileClients = mobileClients;
  }
  return self;
}

- (instancetype)initWithTeamMemberId:(NSString *)teamMemberId {
  return [self initWithTeamMemberId:teamMemberId webSessions:nil desktopClients:nil mobileClients:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMemberDevicesSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMemberDevicesSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMemberDevicesSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMemberDevicesSerializer

+ (NSDictionary *)serialize:(DBTEAMMemberDevices *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"team_member_id"] = valueObj.teamMemberId;
  if (valueObj.webSessions) {
    jsonDict[@"web_sessions"] = [DBArraySerializer serialize:valueObj.webSessions
                                                   withBlock:^id(id elem) {
                                                     return [DBTEAMActiveWebSessionSerializer serialize:elem];
                                                   }];
  }
  if (valueObj.desktopClients) {
    jsonDict[@"desktop_clients"] = [DBArraySerializer serialize:valueObj.desktopClients
                                                      withBlock:^id(id elem) {
                                                        return [DBTEAMDesktopClientSessionSerializer serialize:elem];
                                                      }];
  }
  if (valueObj.mobileClients) {
    jsonDict[@"mobile_clients"] = [DBArraySerializer serialize:valueObj.mobileClients
                                                     withBlock:^id(id elem) {
                                                       return [DBTEAMMobileClientSessionSerializer serialize:elem];
                                                     }];
  }

  return jsonDict;
}

+ (DBTEAMMemberDevices *)deserialize:(NSDictionary *)valueDict {
  NSString *teamMemberId = valueDict[@"team_member_id"];
  NSArray<DBTEAMActiveWebSession *> *webSessions =
      valueDict[@"web_sessions"] ? [DBArraySerializer deserialize:valueDict[@"web_sessions"]
                                                        withBlock:^id(id elem) {
                                                          return [DBTEAMActiveWebSessionSerializer deserialize:elem];
                                                        }]
                                 : nil;
  NSArray<DBTEAMDesktopClientSession *> *desktopClients =
      valueDict[@"desktop_clients"]
          ? [DBArraySerializer deserialize:valueDict[@"desktop_clients"]
                                 withBlock:^id(id elem) {
                                   return [DBTEAMDesktopClientSessionSerializer deserialize:elem];
                                 }]
          : nil;
  NSArray<DBTEAMMobileClientSession *> *mobileClients =
      valueDict[@"mobile_clients"]
          ? [DBArraySerializer deserialize:valueDict[@"mobile_clients"]
                                 withBlock:^id(id elem) {
                                   return [DBTEAMMobileClientSessionSerializer deserialize:elem];
                                 }]
          : nil;

  return [[DBTEAMMemberDevices alloc] initWithTeamMemberId:teamMemberId
                                               webSessions:webSessions
                                            desktopClients:desktopClients
                                             mobileClients:mobileClients];
}

@end
