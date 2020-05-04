//
//  WeatherService.m
//  iOSDesignPatterns
//
//  Created by Qian on 5/2/20.
//  Copyright © 2020 Stella Xu. All rights reserved.
//

#import "WeatherService.h"

@implementation WeatherService

- (void)fetchWeather:(NSString *)cityName {
    
    // https://pinkstone.co.uk/how-to-execute-a-method-on-a-background-thread-in-ios/
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        [NSThread sleepForTimeInterval:5];
        NSLog(@"City : %@", cityName);
        NSDictionary *weather = @{@"temperatureLow": @"12", @"temperatureHigh": @"20"};
        
        // update UI on the main thread
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.delegate didFetchWeather:weather];
        });
        
        
    });
}
@end
