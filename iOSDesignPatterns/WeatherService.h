//
//  WeatherService.h
//  iOSDesignPatterns
//
//  Created by Qian on 5/2/20.
//  Copyright © 2020 Stella Xu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WeatherServiceDelegate <NSObject>

- (void)didFetchWeather:(NSDictionary *)weather;

@end

@interface WeatherService : NSObject

// The call back for Weather service
@property (nonatomic, weak) id <WeatherServiceDelegate> delegate;

/*
 Argument: NSString cityName
 Return: NSDictionary weather (temperatureLow temperatureHigh, degree celcius)
 */
- (void)fetchWeather:(NSString *)cityName;

@end

NS_ASSUME_NONNULL_END
