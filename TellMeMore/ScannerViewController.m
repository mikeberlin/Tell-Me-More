//
//  ScannerViewController.m
//  TellMeMore
//
//  Created by Mike Berlin on 5/23/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "ScannerViewController.h"

@interface ScannerViewController ()

@end

@implementation ScannerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIBarButtonItem Callbacks

- (void)rightSideMenuButtonPressed:(id)sender {
    [self.menuContainerViewController toggleRightSideMenuCompletion:^{
        self.rightSlideOutMenuViewController.foundObjectId = [NSNumber numberWithInt:1525];
    }];
}

#pragma mark - IBActions

- (IBAction)btnAddRightButton:(UIButton *)sender {
    [self setupRightMenuBarItem];
}

@end