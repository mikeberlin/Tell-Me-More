//
//  HomeViewController.m
//  TellMeMore
//
//  Created by Mike Berlin on 5/23/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "HomeViewController.h"
#import "ScannerViewController.h"
#import "BrowseViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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

#pragma mark - IBActions

- (IBAction)btnStartScanning:(UIButton *)sender {
    ScannerViewController *vcScanner = [[ScannerViewController alloc] initWithNibName:@"ScannerViewController"
                                                                               bundle:[NSBundle mainBundle]];

    [self.navigationController pushViewController:vcScanner animated:YES];
}

- (IBAction)btnBrowse:(UIButton *)sender {
    BrowseViewController *vcBrowse = [[BrowseViewController alloc] initWithNibName:@"BrowseViewController"
                                                                            bundle:[NSBundle mainBundle]];

    [self.navigationController pushViewController:vcBrowse animated:YES];
}

@end