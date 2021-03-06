//
//  BasicDummyPlugin.m
//  Hakawai
//
//  Created by Austin Zheng on 8/18/14.
//  Copyright (c) 2014 LinkedIn Corp. All rights reserved.
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
//  the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
//  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//

#import "HKWTBasicDummyPlugin.h"

@implementation HKWTBasicDummyPlugin

@synthesize parentTextView;

+ (instancetype)dummyPluginWithName:(NSString *)name {
    HKWTBasicDummyPlugin *plugin = [self new];
    plugin.pluginName = name;
    return plugin;
}

- (void)performInitialSetup {
    if (self.registerBlock) {
        self.registerBlock();
    }
}

- (void)performFinalCleanup {
    if (self.unregisterBlock) {
        self.unregisterBlock();
    }
}

@end
