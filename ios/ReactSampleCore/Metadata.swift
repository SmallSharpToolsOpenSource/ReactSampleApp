//
//  Metadata.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/19/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation

public class Metadata: NSObject {

  var objectId: Int16
  var owner: User?
  var created: Date
  var modified: Date

  public init(objectId: Int16, owner: User?, created: Date, modified: Date) {
    self.objectId = objectId
    self.owner = owner
    self.created = created
    self.modified = modified
  }

}
