//
//  Times.swift
//
//  Created by Bibo on 12/13/16
//  Copyright (c) Bibo. All rights reserved.
//

import Foundation
import SwiftyJSON

public struct Times {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let utc = "utc"
    static let unixMillisecond = "unix_millisecond"
    static let iso8601 = "iso8601"
    static let unixSecond = "unix_second"
  }

  // MARK: Properties
  public var utc: String?
  public var unixMillisecond: String?
  public var iso8601: String?
  public var unixSecond: String?

  // MARK: SwiftyJSON Initializers
  /// Initiates the instance based on the object.
  ///
  /// - parameter object: The object of either Dictionary or Array kind that was passed.
  /// - returns: An initialized instance of the class.
  public init(object: Any) {
    self.init(json: JSON(object))
  }

  /// Initiates the instance based on the JSON that was passed.
  ///
  /// - parameter json: JSON object from SwiftyJSON.
  public init(json: JSON) {
    utc = json[SerializationKeys.utc].string
    unixMillisecond = json[SerializationKeys.unixMillisecond].string
    iso8601 = json[SerializationKeys.iso8601].string
    unixSecond = json[SerializationKeys.unixSecond].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = utc { dictionary[SerializationKeys.utc] = value }
    if let value = unixMillisecond { dictionary[SerializationKeys.unixMillisecond] = value }
    if let value = iso8601 { dictionary[SerializationKeys.iso8601] = value }
    if let value = unixSecond { dictionary[SerializationKeys.unixSecond] = value }
    return dictionary
  }

}
