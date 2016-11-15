///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBFILESLookupError;
@class DBFILESRestoreError;
@class DBFILESWriteError;

#pragma mark - API Object

///
/// The `RestoreError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESRestoreError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBFILESRestoreErrorTag` enum type represents the possible tag states
/// with which the `DBFILESRestoreError` union can exist.
typedef NS_ENUM(NSInteger, DBFILESRestoreErrorTag) {
  /// An error occurs when downloading metadata for the file.
  DBFILESRestoreErrorPathLookup,

  /// An error occurs when trying to restore the file to that path.
  DBFILESRestoreErrorPathWrite,

  /// The revision is invalid. It may point to a different file.
  DBFILESRestoreErrorInvalidRevision,

  /// (no description).
  DBFILESRestoreErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBFILESRestoreErrorTag tag;

/// An error occurs when downloading metadata for the file. @note Ensure the
/// `isPathLookup` method returns true before accessing, otherwise a runtime
/// exception will be raised.
@property (nonatomic, readonly) DBFILESLookupError * _Nonnull pathLookup;

/// An error occurs when trying to restore the file to that path. @note Ensure
/// the `isPathWrite` method returns true before accessing, otherwise a runtime
/// exception will be raised.
@property (nonatomic, readonly) DBFILESWriteError * _Nonnull pathWrite;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "path_lookup".
///
/// Description of the "path_lookup" tag state: An error occurs when downloading
/// metadata for the file.
///
/// @param pathLookup An error occurs when downloading metadata for the file.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPathLookup:(DBFILESLookupError * _Nonnull)pathLookup;

///
/// Initializes union class with tag state of "path_write".
///
/// Description of the "path_write" tag state: An error occurs when trying to
/// restore the file to that path.
///
/// @param pathWrite An error occurs when trying to restore the file to that
/// path.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPathWrite:(DBFILESWriteError * _Nonnull)pathWrite;

///
/// Initializes union class with tag state of "invalid_revision".
///
/// Description of the "invalid_revision" tag state: The revision is invalid. It
/// may point to a different file.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithInvalidRevision;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "path_lookup".
///
/// @note Call this method and ensure it returns true before accessing the
/// `pathLookup` property, otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "path_lookup".
///
- (BOOL)isPathLookup;

///
/// Retrieves whether the union's current tag state has value "path_write".
///
/// @note Call this method and ensure it returns true before accessing the
/// `pathWrite` property, otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "path_write".
///
- (BOOL)isPathWrite;

///
/// Retrieves whether the union's current tag state has value
/// "invalid_revision".
///
/// @return Whether the union's current tag state has value "invalid_revision".
///
- (BOOL)isInvalidRevision;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBFILESRestoreError` union.
///
@interface DBFILESRestoreErrorSerializer : NSObject

///
/// Serializes `DBFILESRestoreError` instances.
///
/// @param instance An instance of the `DBFILESRestoreError` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESRestoreError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESRestoreError * _Nonnull)instance;

///
/// Deserializes `DBFILESRestoreError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESRestoreError` API object.
///
/// @return An instantiation of the `DBFILESRestoreError` object.
///
+ (DBFILESRestoreError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
