//
//  SlideOutMenuViewController.h
//  TellMeMore
//
//  Created by Mike Berlin on 5/23/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideOutMenuViewController : UIViewController

@property (nonatomic) NSNumber *foundObjectId;

@property (strong, nonatomic) IBOutlet UILabel *lblStory;
@property (strong, nonatomic) IBOutlet UILabel *lblVideos;
@property (strong, nonatomic) IBOutlet UILabel *lblPhotos;
@property (strong, nonatomic) IBOutlet UILabel *lblSounds;
@property (strong, nonatomic) IBOutlet UILabel *lblBio;

@end