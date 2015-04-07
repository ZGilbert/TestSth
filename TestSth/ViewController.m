//
//  ViewController.m
//  TestSth
//
//  Created by gypsii001 on 15/4/3.
//  Copyright (c) 2015年 gypsii001. All rights reserved.
//

#import "ViewController.h"
#import "TasdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"asdfadsf");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"asdfasdf");
}

- (void)jump
{
    NSLog(@"jump");
    TasdViewController *a = [[TasdViewController alloc] initWithNibName:@"TasdViewController" bundle:nil];
    [self.navigationController pushViewController:a animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
