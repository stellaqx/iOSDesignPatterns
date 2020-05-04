//
//  ViewController.h
//  iOSDesignPatterns
//
//  Created by Qian on 5/2/20.
//  Copyright © 2020 Stella Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherService.h"

@interface ProtocolDelegateViewController : UIViewController <WeatherServiceDelegate>


@end

