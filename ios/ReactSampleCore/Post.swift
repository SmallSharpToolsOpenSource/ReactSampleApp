//
//  Post.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/18/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation

public class Post: NSObject {

  public let text: String
  public var metadata: Metadata?

  public init(text: String, metadata: Metadata?) {
    self.text = text

    self.metadata = metadata
  }

}
