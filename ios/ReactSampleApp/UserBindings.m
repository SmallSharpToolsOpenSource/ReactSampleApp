//
//  UserBindings.m
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/19/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

#import "UserBindings.h"

#import <ReactSampleCore/ReactSampleCore.h>
#import <ReactSampleKit/ReactSampleKit.h>

#import "RCTLog.h"

@implementation UserBindings

RCT_EXPORT_MODULE(Content)

RCT_EXPORT_METHOD(prepareUser) {
  RCTLogInfo(@"Preparing user...");

  User *user = [[User alloc] initWithFirstName:@"" lastName:@"" username:@"" password:nil metadata:nil];
  NSURL *photoURL = [NSURL URLWithString:@""];
  Photo *photo = [[Photo alloc] initWithPhotoURL:photoURL];

  NSLog(@"User: %@", user);
  NSLog(@"Photo: %@", photo);
}

@end
