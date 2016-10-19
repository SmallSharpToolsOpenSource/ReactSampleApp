//
//  Photo.swift
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/19/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

import Foundation

public class Photo: NSObject {

  let photoURL: URL

  public init(photoURL: URL) {
    self.photoURL = photoURL
  }

}
