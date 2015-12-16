//
//  Player.h
//  NSArrayHW
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, strong) NSString* fullName;
@property (nonatomic, strong) NSString* position;

- (instancetype) init: (NSString*) fullName and: (NSString*) position;

@end
