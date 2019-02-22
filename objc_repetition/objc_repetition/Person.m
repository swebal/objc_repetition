//
//  Person.m
//  objc_repetition
//
//  Created by Markus on 2019-02-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "Person.h"

@interface Person () {
    
}
@end

@implementation Person

- (void)murder{
    
} // Instans-metod, utan retur-typ och utan några parametrar

- (void)murder:(BOOL)withAxe{
    
} // Överlagrad metod som har en parameter

- (void)murder:(NSString *)withWeapon inRoom:(NSString *)room{
    
} // Överlagrad metod med 2 parametrar

- (BOOL)murderDate:(NSDate *)day{
    return true;
} // Instans-metod som returnerar en BOOL och tar emot en parameter

- (NSString *)didMurderPerson{
    return @"Markus";
} // Instans-metod som returnerar en sträng utan parametrar;

+ (Person *)randomPerson { // Klass-metod som returnerar Person-objekt
    Person *p = [Person new];
    // TODO: Tilldela properties värden...
    return p;
}

@end
