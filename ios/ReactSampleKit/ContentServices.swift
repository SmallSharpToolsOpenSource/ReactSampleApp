//
//  ContentServices.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/18/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation
import ReactSampleCore

public class ContentServices: NSObject {

  public static let sharedInstance = ContentServices()

  private var posts = [Post]()
  private var comments = [Comment]()

  private var lastPostId: Int16 = 0
  private var lastCommentId: Int16 = 0

  private func nextPostId() -> Int16 {
    lastPostId += 1
    return lastPostId
  }

  private func nextCommentId() -> Int16 {
    lastCommentId += 1
    return lastCommentId
  }

  public func publishPost(post: Post) {
    if post.metadata == nil {
      let now = Date()
      post.metadata = Metadata(objectId: 0, owner: nil, created: now, modified: now)
    }
    posts.append(post)
  }

  public func loadPosts() -> [Post] {
    return posts
  }

  public func addComment(text: String, post: Post, user: User) {
    let now = Date()
    let metadata = Metadata(objectId: 0, owner: user, created: now, modified: now)
    let comment = Comment(text: text, post: post, metadata: metadata)
    comments.append(comment)
  }

}
