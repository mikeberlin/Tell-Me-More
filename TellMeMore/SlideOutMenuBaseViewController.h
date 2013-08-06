//
//  SlideOutMenuBaseViewController.h
//  TellMeMore
//
//  Created by Mike Berlin on 6/4/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFSideMenu.h"
#import "SlideOutMenuViewController.h"

@interface SlideOutMenuBaseViewController : UIViewController

- (MFSideMenuContainerViewController *)menuContainerViewController;
- (SlideOutMenuViewController *)rightSlideOutMenuViewController;

- (void)setupRightMenuBarItem;

@end