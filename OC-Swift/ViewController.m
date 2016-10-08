//
//  ViewController.m
//  OC-Swift
//
//  Created by Liu Zhao on 16/8/12.
//  Copyright © 2016年 Liu Zhao. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "OC_Swift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                                                                           target:self
                                                                                           action:@selector(gotoThirdVC)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)gotoSecondVC
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)gotoThirdVC
{
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

@end
