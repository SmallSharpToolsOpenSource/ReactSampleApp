//
//  User.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/18/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation

public class User: NSObject {

  public let username: String
  private var password: String?

  public let firstName: String
  public let lastName: String

  public var metadata: Metadata?

  public init(firstName: String, lastName: String, username: String, password: String?, metadata: Metadata?) {
    self.username = username
    self.password = password

    self.firstName = firstName
    self.lastName = lastName

    self.metadata = metadata
  }

}
