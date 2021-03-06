///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGFileLinkMetadata.h"
#import "DBSHARINGLinkPermissions.h"
#import "DBSHARINGSharedLinkMetadata.h"
#import "DBSHARINGTeamMemberInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBUSERSTeam.h"

#pragma mark - API Object

@implementation DBSHARINGFileLinkMetadata

#pragma mark - Constructors

- (instancetype)initWithUrl:(NSString *)url
                       name:(NSString *)name
            linkPermissions:(DBSHARINGLinkPermissions *)linkPermissions
             clientModified:(NSDate *)clientModified
             serverModified:(NSDate *)serverModified
                        rev:(NSString *)rev
                       size:(NSNumber *)size
                        id_:(NSString *)id_
                    expires:(NSDate *)expires
                  pathLower:(NSString *)pathLower
             teamMemberInfo:(DBSHARINGTeamMemberInfo *)teamMemberInfo
       contentOwnerTeamInfo:(DBUSERSTeam *)contentOwnerTeamInfo {
  [DBStoneValidators stringValidator:@(9) maxLength:nil pattern:@"[0-9a-f]+"](rev);
  [DBStoneValidators nullableValidator:[DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil]](id_);

  self = [super initWithUrl:url
                       name:name
            linkPermissions:linkPermissions
                        id_:id_
                    expires:expires
                  pathLower:pathLower
             teamMemberInfo:teamMemberInfo
       contentOwnerTeamInfo:contentOwnerTeamInfo];
  if (self) {
    _clientModified = clientModified;
    _serverModified = serverModified;
    _rev = rev;
    _size = size;
  }
  return self;
}

- (instancetype)initWithUrl:(NSString *)url
                       name:(NSString *)name
            linkPermissions:(DBSHARINGLinkPermissions *)linkPermissions
             clientModified:(NSDate *)clientModified
             serverModified:(NSDate *)serverModified
                        rev:(NSString *)rev
                       size:(NSNumber *)size {
  return [self initWithUrl:url
                      name:name
           linkPermissions:linkPermissions
            clientModified:clientModified
            serverModified:serverModified
                       rev:rev
                      size:size
                       id_:nil
                   expires:nil
                 pathLower:nil
            teamMemberInfo:nil
      contentOwnerTeamInfo:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGFileLinkMetadataSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGFileLinkMetadataSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGFileLinkMetadataSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGFileLinkMetadataSerializer

+ (NSDictionary *)serialize:(DBSHARINGFileLinkMetadata *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"url"] = valueObj.url;
  jsonDict[@"name"] = valueObj.name;
  jsonDict[@"link_permissions"] = [DBSHARINGLinkPermissionsSerializer serialize:valueObj.linkPermissions];
  jsonDict[@"client_modified"] =
      [DBNSDateSerializer serialize:valueObj.clientModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  jsonDict[@"server_modified"] =
      [DBNSDateSerializer serialize:valueObj.serverModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  jsonDict[@"rev"] = valueObj.rev;
  jsonDict[@"size"] = valueObj.size;
  if (valueObj.id_) {
    jsonDict[@"id"] = valueObj.id_;
  }
  if (valueObj.expires) {
    jsonDict[@"expires"] = [DBNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  }
  if (valueObj.pathLower) {
    jsonDict[@"path_lower"] = valueObj.pathLower;
  }
  if (valueObj.teamMemberInfo) {
    jsonDict[@"team_member_info"] = [DBSHARINGTeamMemberInfoSerializer serialize:valueObj.teamMemberInfo];
  }
  if (valueObj.contentOwnerTeamInfo) {
    jsonDict[@"content_owner_team_info"] = [DBUSERSTeamSerializer serialize:valueObj.contentOwnerTeamInfo];
  }

  return jsonDict;
}

+ (DBSHARINGFileLinkMetadata *)deserialize:(NSDictionary *)valueDict {
  NSString *url = valueDict[@"url"];
  NSString *name = valueDict[@"name"];
  DBSHARINGLinkPermissions *linkPermissions =
      [DBSHARINGLinkPermissionsSerializer deserialize:valueDict[@"link_permissions"]];
  NSDate *clientModified =
      [DBNSDateSerializer deserialize:valueDict[@"client_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  NSDate *serverModified =
      [DBNSDateSerializer deserialize:valueDict[@"server_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  NSString *rev = valueDict[@"rev"];
  NSNumber *size = valueDict[@"size"];
  NSString *id_ = valueDict[@"id"] ?: nil;
  NSDate *expires = valueDict[@"expires"]
                        ? [DBNSDateSerializer deserialize:valueDict[@"expires"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"]
                        : nil;
  NSString *pathLower = valueDict[@"path_lower"] ?: nil;
  DBSHARINGTeamMemberInfo *teamMemberInfo =
      valueDict[@"team_member_info"] ? [DBSHARINGTeamMemberInfoSerializer deserialize:valueDict[@"team_member_info"]]
                                     : nil;
  DBUSERSTeam *contentOwnerTeamInfo = valueDict[@"content_owner_team_info"]
                                          ? [DBUSERSTeamSerializer deserialize:valueDict[@"content_owner_team_info"]]
                                          : nil;

  return [[DBSHARINGFileLinkMetadata alloc] initWithUrl:url
                                                   name:name
                                        linkPermissions:linkPermissions
                                         clientModified:clientModified
                                         serverModified:serverModified
                                                    rev:rev
                                                   size:size
                                                    id_:id_
                                                expires:expires
                                              pathLower:pathLower
                                         teamMemberInfo:teamMemberInfo
                                   contentOwnerTeamInfo:contentOwnerTeamInfo];
}

@end
