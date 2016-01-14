#import <Foundation/Foundation.h>

@class Engine;
@class Tire;

@interface Car : NSObject
{
    Engine *engine;
    Tire   *tires[4];
}
- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire:(Tire *)tire atIndex: (int)index;
- (void) print;
@end