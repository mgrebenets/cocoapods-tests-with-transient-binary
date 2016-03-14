//
//  SplunkMintLog.h
//  Splunk-iOS
//
//  Created by George Taskos on 7/24/14.
//  Copyright (c) 2014 SLK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MintEnums.h"
#import "RequestWorkerFacadeDelegate.h"

@interface MintLogger : NSObject

/**
 * Used internally for logging request
 */
+ (void) setRequestWorker:(id<RequestWorkerFacadeDelegate>)worker;

/**
 * Log messages with log level
 * @param logLevel log level for the log message
 * @param message events name, variable, ect...
 */
void MintLog(MintLogLevel logLevel, NSString* message, ...) NS_FORMAT_FUNCTION(2,3);

@end
