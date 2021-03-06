//
//  MASViewController.h
//  UIScrollView Challenge Solution
//
//  Created by Mark Stuver on 10/23/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

/// Conform to the UIScrollViewDelegate for zooming
@interface MASViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UIImageView *globalImageView;

@end
