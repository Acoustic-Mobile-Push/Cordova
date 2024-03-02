/*
 * Copyright © 2011, 2019 Acoustic, L.P. All rights reserved.
 *
 * NOTICE: This file contains material that is confidential and proprietary to
 * Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
 * industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
 * Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
 * prohibited.
 */

#import <Cordova/CDVPlugin.h>

@interface MCEBeaconPlugin : CDVPlugin {
    
}

- (void) beaconRegions:(CDVInvokedUrlCommand*)command;
- (void) beaconEnabled:(CDVInvokedUrlCommand*)command;
- (void) setBeaconEnterCallback:(CDVInvokedUrlCommand*)command;
- (void) setBeaconExitCallback:(CDVInvokedUrlCommand*)command;
- (void) beaconUUID:(CDVInvokedUrlCommand*)command;

@end