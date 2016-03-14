//
//  SplunkInternalRequest.h
//  Splunk-iOS
//
//  Created by G.Tas on 11/7/13.
//  Copyright (c) 2013 Splunk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPLJSONModel.h"

@interface MintInternalRequest : SPLJSONModel

@property (nonatomic, strong) NSString<Optional>* comment;
@property (nonatomic, strong) NSString<Optional>* userId;

@end
