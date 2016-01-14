#import "Car.h"

@implementation Car

- (id) init
{
    if(self = [super init]) {
        /*
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
        */
    }
    return (self);
}

- (Engine *) engine
{
    return engine;
}

- (void) setEngine: (Engine *) newEngine
{
    engine = newEngine;
}

- (Tire *) tireAtIndex: (int) index
{
    if(index >= 0 && index < 4)
    {
        return tires[index];    
    }
    else
    {
        NSLog(@"Bad index %d in tireAtIndex:", index);
        exit(1);        
    }
}

- (void) setTire:(Tire *)tire atIndex: (int)index
{
    if(index >= 0 && index < 4)
    {
        tires[index] = tire;
    }
    else
    {
        NSLog(@"Bad index %d in tireAtIndex:", index);
        exit(1);
    }
}

- (void) print
{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}

@end