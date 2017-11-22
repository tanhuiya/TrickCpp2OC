//
//  ViewController.m
//  Trick
//
//  Created by tanhui on 2017/8/23.
//  Copyright © 2017年 tanhui. All rights reserved.
//

#import "ViewController.h"
#import "ObjectOC.h"
#include "ObjectCpp.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ObjectOC * oc = [[ObjectOC alloc]init];
    void* point = (__bridge void*)oc;
    ObjectCpp* cpp = new ObjectCpp(point,oc.call);
    cpp->function((__bridge void*)@"123412");
    delete cpp;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
