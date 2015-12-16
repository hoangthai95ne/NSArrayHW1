//
//  Player.m
//  NSArrayHW
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype) init:(NSString *)fullName and:(NSString *)position {
    self = [super init];
    if (self) {
        self.fullName = fullName;
        self.position = position;
    }
    return  self;
}

- (BOOL) isEqual:(id)object {
    if ([object isMemberOfClass:[Player class]]) {
        Player* temp = (Player*) object;
        if ([self.fullName isEqual:temp.fullName] && [self.position isEqual:temp.position]) {
            return true;
        }
        else {
            return false;
        }
    }
    else {
        return false;
    }
}

@end
