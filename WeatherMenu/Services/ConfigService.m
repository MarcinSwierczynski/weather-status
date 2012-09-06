//
//  ConfigService
//
//  Created by Marcin Swierczynski on 06.09.2012.
//  Copyright (c) 2012 Vsnap Inc. All rights reserved.
//
#import "ConfigService.h"


@implementation ConfigService {

}

+ (ConfigService *)instance
{
	static ConfigService *_instance = nil;

	@synchronized (self) {
		if (_instance == nil) {
			_instance = [[self alloc] init];
		}
	}

	return _instance;
}

- (void)registerDefaultSettings
{
	[[NSUserDefaults standardUserDefaults] registerDefaults:
			[NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Defaults" ofType:@"plist"]]];
}


@end