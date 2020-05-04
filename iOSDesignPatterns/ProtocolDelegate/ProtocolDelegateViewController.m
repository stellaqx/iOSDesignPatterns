//
//  ViewController.m
//  iOSDesignPatterns
//
//  Created by Qian on 5/2/20.
//  Copyright © 2020 Stella Xu. All rights reserved.
//

#import "ProtocolDelegateViewController.h"
#import "WeatherService.h"

@interface ProtocolDelegateViewController ()

@property WeatherService *weatherService;
@property (weak, nonatomic) IBOutlet UILabel *tempLowLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempHighLabel;

@end

@implementation ProtocolDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _weatherService = [[WeatherService alloc] init];
    _weatherService.delegate = self;
}

- (IBAction)didPressFetchWeather:(UIButton *)sender {
    [self.weatherService fetchWeather:@"San Bruno"];
}

#pragma MARK WeatherServiceDelegate
- (void)didFetchWeather:(NSDictionary *)weather {
    // update the view here
    self.tempLowLabel.text = [weather valueForKey:@"temperatureLow"];
    self.tempHighLabel.text = [weather valueForKey:@"temperatureHigh"];
}

@end
