//
//  ViewController.m
//  NSArrayHW
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"

@interface ViewController ()

@end


//1	Germany	GK	Marc-André ter Stegen
//3	Spain	DF	Gerard Piqué (4th captain)
//4	Croatia	MF	Ivan Rakitić
//5	Spain	MF	Sergio Busquets (3rd captain)
//7	Spain	FW	Pedro Rodríguez
//8	Spain	MF	Andrés Iniesta (captain)
//9	Uruguay	FW	Luis Suárez
//10	Argentina	FW	Lionel Messi (vice-captain)
//11	Brazil	FW	Neymar
//12	Brazil	MF	Rafinha
//13	Chile	GK	Claudio Bravo
//14	Argentina	MF	Javier Mascherano
//15	Spain	DF	Marc Bartra
//16	Brazil	DF	Douglas
//18	Spain	DF	Jordi Alba
//20	Spain	MF	Sergi Roberto
//21	Brazil	DF	Adriano
//22	Brazil	DF	Dani Alves
//23	Belgium	DF	Thomas Vermaelen
//24	France	DF	Jérémy Mathieu
//25	Spain	GK	Jordi Masip


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Player* a01 = [[Player alloc] init:@"Marc-André ter Stegen" and:@"GK"];
    Player* a02 = [[Player alloc] init:@"Gerard Piqué" and:@"DF"];
    Player* a03 = [[Player alloc] init:@"Ivan Rakitić" and:@"MF"];
    Player* a04 = [[Player alloc] init:@"Sergio Busquets" and:@"MF"];
    Player* a05 = [[Player alloc] init:@"Pedro Rodríguez" and:@"FW"];
    Player* a06 = [[Player alloc] init:@"Andrés Iniesta" and:@"MF"];
    Player* a07 = [[Player alloc] init:@"Luis Suárez" and:@"FW"];
    Player* a08 = [[Player alloc] init:@"Lionel Messi" and:@"FW"];
    Player* a09 = [[Player alloc] init:@"Neymar" and:@"FW"];
    Player* a10 = [[Player alloc] init:@"Rafinha" and:@"MF"];
    Player* a11 = [[Player alloc] init:@"Claudio Bravo" and:@"GK"];
    Player* a12 = [[Player alloc] init:@"Javier Mascherano" and:@"MF"];
    Player* a13 = [[Player alloc] init:@"Marc Bartra" and:@"DF"];
    Player* a14 = [[Player alloc] init:@"Douglas" and:@"DF"];
    Player* a15 = [[Player alloc] init:@"Jordi Alba" and:@"DF"];
    Player* a16 = [[Player alloc] init:@"Sergi Roberto" and:@"MF"];
    Player* a17 = [[Player alloc] init:@"Adriano" and:@"DF"];
    Player* a18 = [[Player alloc] init:@"Dani Alves" and:@"DF"];
    Player* a19 = [[Player alloc] init:@"Thomas Vermaelen" and:@"DF"];
    Player* a20 = [[Player alloc] init:@"Jérémy Mathieu" and:@"DF"];
    Player* a21 = [[Player alloc] init:@"Jordi Masip" and:@"GK"];
    
    NSArray* data = @[a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21];
    
    NSArray* team = [NSArray arrayWithObjects: nil];
    
    int temp = 1;
    while (temp <= 11) {
        int index = arc4random_uniform([data count]);
        Player* tempPlayer = data[index];
        int check = 1;
        for (Player* tempPlayer1 in team) {
            if ([tempPlayer1 isEqual: tempPlayer]) {
                check = 0;
            }
        }
        if (check == 1) {
            team = [team arrayByAddingObject:tempPlayer];
            temp++;
        }
    }
    
    NSLog(@"This is offcial team of Barcelona: ");
    for (Player* tempPlayer1 in team) {
        NSLog(@"%@ - %@", tempPlayer1.fullName, tempPlayer1.position);
    }
    
}


@end
