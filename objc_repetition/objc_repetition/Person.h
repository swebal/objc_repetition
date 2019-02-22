//
//  Person.h
//  objc_repetition
//
//  Created by Markus on 2019-02-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, assign) BOOL dead;
@property int age;
@property NSString *name;

- (void)murder; // Instans-metod, utan retur-typ och utan några parametrar

- (void)murder:(BOOL)withAxe; // Överlagrad metod som har en parameter

- (void)murder:(NSString *)withWeapon inRoom:(NSString *)room; // Överlagrad metod med 2 parametrar

- (BOOL)murderDate:(NSDate *)day; // Instans-metod som returnerar en BOOL och tar emot en parameter

- (NSString *)didMurderPerson; // Instans-metod som returnerar en sträng utan parametrar;

+ (Person *)randomPerson; // Klass-metod som returnerar Person-objekt

@end
