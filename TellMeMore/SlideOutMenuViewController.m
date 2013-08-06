//
//  SlideOutMenuViewController.m
//  TellMeMore
//
//  Created by Mike Berlin on 5/23/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "SlideOutMenuViewController.h"

@interface SlideOutMenuViewController ()

@end

@implementation SlideOutMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
    [self setupTapGestures];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupTapGestures {
    [self.lblStory addGestureRecognizer:[self createTapGesture]];
    [self.lblVideos addGestureRecognizer:[self createTapGesture]];
    [self.lblPhotos addGestureRecognizer:[self createTapGesture]];
    [self.lblSounds addGestureRecognizer:[self createTapGesture]];
    [self.lblBio addGestureRecognizer:[self createTapGesture]];
}

- (UITapGestureRecognizer *)createTapGesture {
    return [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap:)];
}

#pragma mark - UITapGestureRecognizer Selector

- (void)labelTap:(UITapGestureRecognizer *)sender {

    UILabel *tappedLabel = (UILabel *)sender.view;

    switch(tappedLabel.tag) {
        case 0: {
            // TODO: Open the Story View Controller and display the story about the found object
            NSLog(@"The Story label has been tapped!");
            break;
        }
        case 1: {
            NSLog(@"The Videos label has been tapped!");
            break;
        }
        case 2: {
            NSLog(@"The Photos label has been tapped!");
            break;
        }
        case 3: {
            NSLog(@"The Sounds label has been tapped!");
            break;
        }
        case 4: {
            NSLog(@"The Bio label has been tapped!");
            break;
        }
        default: {
            // TODO: Do something by default?
        }
    }
}

@end