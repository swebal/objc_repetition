//
//  ViewController.m
//  objc_repetition
//
//  Created by Markus on 2019-02-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

// Andra "kompilator-flaggor"
#pragma mark - Markus
#define Markus  @"hej"

@interface ViewController () {
    UIColor *e; // Global (kommer åt i hela ViewController)
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    e = [UIColor new];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIColor *a = [[UIColor alloc] init]; // Lokal
    
    UIColor *b = [UIColor new]; // Lokal
    
    UIColor *c = [UIColor blueColor]; // klassmetod
    [c colorWithAlphaComponent:1]; // instans-metod
    
    UIColor *d = [[UIColor alloc] initWithWhite:1 alpha:1]; // Överlagrad init-metod
    
    if (d) {
        UIColor *f = [UIColor purpleColor]; // Lokal för if-satsen
    }
    // Här kommer vi INTE åt "f"!
    
    
    
    
    
    Person *p = [[Person alloc] init];
    
    p.name = @"Markus";
    [p setName:@"Markus"]; // Gömda setter-metoden!
    
    p.age = 39;
    p.dead = false;
    
    
    Person *random = [Person randomPerson]; // Anropar vi en klass-metod
    // [Person murder]; // Går inte! (anropa instans-metod från klass)
    // [random randomPerson] // Går inte heller! (anropa klass-metod från objekt)
    [random murder]; // Anropar vi en instans-metod
    [random murder:YES]; // Anropar vi en instans-metod
    [random murder:@"Markus" inRoom:@"Dining room"]; // Anropar vi en instans-metod
    
    BOOL didMurder = [random murderDate:[NSDate date]]; // Blir true el. false  // Anropar vi en instans-metod
    NSInteger didMurderNumber = (NSInteger)[random murderDate:[NSDate date]]; // Blir 1 el. 0
    
    Person *n;
    
    // Array
    
    NSArray *pa1 = [[NSArray alloc] initWithObjects:p, random, nil];
    NSArray *pa2 = @[p, n, random]; // KOmmer att krascha för att n == nil!!!
    
    NSNumber *tolv = [[NSNumber alloc] initWithInt:12];
    NSArray *siffor = @[@(12), @(23), @(34)];
    
    NSMutableArray *randomPersoner = [NSMutableArray new];
    for (int i=0; i<10; i++) {
        Person *pp = [Person randomPerson];
        [randomPersoner addObject:pp];
    }
    Person *firstPerson = randomPersoner.firstObject;
    [randomPersoner removeObject:firstPerson];
    [randomPersoner removeObjectAtIndex:4];
    [randomPersoner removeAllObjects];
    
    // Dictionary
    
    // int, boolean, double, string, array, dictionary (finns alla i JSON)
    
    NSDictionary *ob1 = [[NSDictionary alloc] initWithObjectsAndKeys:p, @"person1", random, @"Slump", nil];
    NSDictionary *ob2 = @{@"person1":p, @"Slump":random}; // Kopia av JSON
    
    NSMutableDictionary *mdict = [NSMutableDictionary new];
    [mdict addEntriesFromDictionary:@{@"person1":p}]; // LÄgger till
    [mdict setObject:random forKey:@"random"]; // LÄgger till
    mdict[@"random2"] = random; // LÄgger till
    
    [mdict removeObjectForKey:@"random"];
    [mdict removeObjectsForKeys:@[@"person1", @"random2"]];
    [mdict removeAllObjects];
}

@end
