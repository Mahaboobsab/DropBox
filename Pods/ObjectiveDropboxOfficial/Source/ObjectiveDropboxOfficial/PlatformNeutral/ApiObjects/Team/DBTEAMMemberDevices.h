///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMActiveWebSession;
@class DBTEAMDesktopClientSession;
@class DBTEAMMemberDevices;
@class DBTEAMMobileClientSession;

#pragma mark - API Object

///
/// The `MemberDevices` struct.
///
/// Information on devices of a team's member.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMMemberDevices : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The member unique Id
@property (nonatomic, readonly, copy) NSString * _Nonnull teamMemberId;

/// List of web sessions made by this team member
@property (nonatomic, readonly) NSArray<DBTEAMActiveWebSession *> * _Nullable webSessions;

/// List of desktop clients by this team member
@property (nonatomic, readonly) NSArray<DBTEAMDesktopClientSession *> * _Nullable desktopClients;

/// List of mobile clients by this team member
@property (nonatomic, readonly) NSArray<DBTEAMMobileClientSession *> * _Nullable mobileClients;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param teamMemberId The member unique Id
/// @param webSessions List of web sessions made by this team member
/// @param desktopClients List of desktop clients by this team member
/// @param mobileClients List of mobile clients by this team member
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId
                                 webSessions:(NSArray<DBTEAMActiveWebSession *> * _Nullable)webSessions
                              desktopClients:(NSArray<DBTEAMDesktopClientSession *> * _Nullable)desktopClients
                               mobileClients:(NSArray<DBTEAMMobileClientSession *> * _Nullable)mobileClients;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param teamMemberId The member unique Id
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `MemberDevices` struct.
///
@interface DBTEAMMemberDevicesSerializer : NSObject

///
/// Serializes `DBTEAMMemberDevices` instances.
///
/// @param instance An instance of the `DBTEAMMemberDevices` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMMemberDevices` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMMemberDevices * _Nonnull)instance;

///
/// Deserializes `DBTEAMMemberDevices` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMMemberDevices` API object.
///
/// @return An instantiation of the `DBTEAMMemberDevices` object.
///
+ (DBTEAMMemberDevices * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
