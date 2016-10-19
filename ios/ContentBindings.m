//
//  ContentBindings.m
//  ReactSampleApp
//
//  Created by Brennan Stehling on 10/19/16.
//  Copyright © 2016 SmallSharpTools. All rights reserved.
//

#import "ContentBindings.h"

#import "RCTLog.h"

@implementation ContentBindings

RCT_EXPORT_MODULE(Content)

RCT_EXPORT_METHOD(prepareContent) {
  RCTLogInfo(@"Preparing content...");
}

@end
