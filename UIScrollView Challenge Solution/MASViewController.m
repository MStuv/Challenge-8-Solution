//
//  MASViewController.m
//  UIScrollView Challenge Solution
//
//  Created by Mark Stuver on 10/23/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import "MASViewController.h"

@interface MASViewController ()

@end

@implementation MASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /// Give the globalImageView property a initialized value equal to the worldMap image
    self.globalImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpg"]];
    
    /// Set ScrollView size to match the imageView's frame size
    self.scrollView.contentSize = self.globalImageView.frame.size;
    
    ///add the globalImageView as a subview of the scrollView
    [self.scrollView addSubview:self.globalImageView];
    
    /// Set scrollView's delegate as itself
    self.scrollView.delegate = self;
    
    /// Set min and max zoom scale
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView Delegates

/// Delegate for UIScrollView for zooming
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.globalImageView;
    
/// In viewDidLoad: make sure to set the scrollView as the delegate and set the min & max zoom scale
}


@end
