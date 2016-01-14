//
//  main.m
//  testgit
//
//  Created by David on 16/1/14.
//  Copyright © 2016年 david. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"CarParts");
        Car *car = [Car new];
        Engine *engine = [Slant6 new];
        [car setEngine: engine];
        for(int i = 0; i < 4; i++) {
            Tire *tire = [AllWeatherRadial new];
            [car setTire: tire atIndex: i];
        }
        [car print];
        
        return (0);
    }
    return 0;
}
