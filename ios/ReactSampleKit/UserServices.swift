//
//  UserServices.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/18/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation
import ReactSampleCore

public class UserServices: NSObject {

  public static let sharedInstance = UserServices()

  private override init() {
    super.init()
    loadUsers()
  }

  private func loadUsers() {
    // TODO: load users.json
    debugPrint("Loading Users...")
  }

  public func registerUser(user: User) -> User {
    return user
  }

  public func logIn(username: String, password: String) -> User? {
    return nil
  }

  public func logOut() {
    // do nothing
  }

}
