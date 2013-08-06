//
//  SlideOutMenuBaseViewController.m
//  TellMeMore
//
//  Created by Mike Berlin on 6/4/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "SlideOutMenuBaseViewController.h"

@interface SlideOutMenuBaseViewController ()

@end

@implementation SlideOutMenuBaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (MFSideMenuContainerViewController *)menuContainerViewController {
    return (MFSideMenuContainerViewController *)self.navigationController.parentViewController;
}

- (SlideOutMenuViewController *)rightSlideOutMenuViewController {
    return (SlideOutMenuViewController *)self.menuContainerViewController.rightMenuViewController;
}

#pragma mark - UIBarButtonItems

- (void)setupRightMenuBarItem {
    if (self.navigationItem.rightBarButtonItem == nil) {
        self.navigationItem.rightBarButtonItem = [self rightMenuBarButtonItem];
    }
}

- (UIBarButtonItem *)rightMenuBarButtonItem {
    return [[UIBarButtonItem alloc]
            initWithImage:[UIImage imageNamed:@"menu-icon.png"] style:UIBarButtonItemStyleBordered
            target:self
            action:@selector(rightSideMenuButtonPressed:)];
}

#pragma mark - UIBarButtonItem Callbacks

- (void)rightSideMenuButtonPressed:(id)sender {
    [self.menuContainerViewController toggleRightSideMenuCompletion:^{
        // Base class does nothing here. This message should be overwritten.
    }];
}

@end