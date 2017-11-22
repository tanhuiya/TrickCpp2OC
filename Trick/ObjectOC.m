//
//  TrickOC.m
//  Trick
//
//  Created by tanhui on 2017/8/23.
//  Copyright © 2017年 tanhui. All rights reserved.
//

#import "ObjectOC.h"

void OcObjectDoSomethingWith(void* caller, void* parameter){
    [(__bridge id)caller doSomething:parameter];
}

@implementation ObjectOC

-(instancetype)init{
    if ([super init]) {
        _call = OcObjectDoSomethingWith;
    }
    return self;
}

-(void)doSomething:(void *)parameter{
    NSLog(@"%@",parameter);
}

-(void)dealloc{
    NSLog(@"OC Object dealloc");
}
@end
