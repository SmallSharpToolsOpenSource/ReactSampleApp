//
//  Comment.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/18/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation

public class Comment: NSObject {

  public let text: String
  public let post: Post

  public var metadata: Metadata?

  public init(text: String, post: Post, metadata: Metadata?) {
    self.text = text
    self.post = post

    self.metadata = metadata
  }

}
