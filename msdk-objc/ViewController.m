//
//  ViewController.m
//  msdk-objc
//
//  Created by Олег В. Твердохлеб on 13/12/2018.
//  Copyright © 2018 oltv00. All rights reserved.
//

#import "ViewController.h"
#import "msdk_objc-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self start];
    });
}

@end
