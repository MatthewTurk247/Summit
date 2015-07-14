//
//  ViewController.m
//  SummIt
//
//  Created by Matthew Turk on 7/5/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade]; //This is so that the status bar car be relatively visble on a depp midnight blue background. Let me know if the status bar should come in on viewDidLoad with a different UIStatusBarAnimation. -Matthew Turk
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
