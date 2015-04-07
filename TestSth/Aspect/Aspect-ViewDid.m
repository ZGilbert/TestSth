//
//  Aspect-ViewDid.m
//  TestSth
//
//  Created by gypsii001 on 15/4/3.
//  Copyright (c) 2015年 gypsii001. All rights reserved.
//

#import "ViewController.h"
#import <XAspect/XAspect.h>

// Define an aspect field for GoogleAnalytics
#define AtAspect ViewDid

#define AtAspectOfClass ViewController
@classPatchField(ViewController)

@synthesizeNucleusPatch(Default, -, void, viewDidLoad);
@synthesizeNucleusPatch(Default, -, void, viewDidAppear:(BOOL)animated);

AspectPatch(-, void, viewDidLoad)
{
    NSLog(@"[CocoaLumberjack Log]: %@'s view did load.", NSStringFromClass([self class]));
    return XAMessageForward(viewDidLoad);
}

AspectPatch(-, void, viewDidAppear:(BOOL)animated)
{
    NSLog(@"[CocoaLumberjack Log]: %@'s view did appear.", NSStringFromClass([self class]));
    UIButton *nameBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    nameBtn.frame = CGRectMake(10, 170, 300, 40);
//    nameBtn.backgroundColor = [UIColor redColor];
    [nameBtn setTitle:@"one" forState:UIControlStateNormal];
    [nameBtn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:nameBtn];
    return XAMessageForward(viewDidAppear:(BOOL)animated);
}

@end
#undef AtAspectOfClass
#undef AtAspec
