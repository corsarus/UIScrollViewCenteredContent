


//
//  ViewController.m
//  UIScrollViewCenteredContent
//
//  Created by admin on 30/03/15.
//  Copyright (c) 2015 corsarus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *centeredView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.view setNeedsLayout];
}


- (void)viewDidLayoutSubviews
{
    
    if (self.containerView) {
        UIEdgeInsets scrollViewInsets = UIEdgeInsetsZero;
        
        scrollViewInsets.top = (CGRectGetHeight(self.scrollView.bounds) - CGRectGetHeight(self.containerView.bounds)) / 2 + 1.0f;
        scrollViewInsets.bottom = (CGRectGetHeight(self.scrollView.bounds) - CGRectGetHeight(self.containerView.bounds)) / 2;
        
        self.scrollView.contentInset = scrollViewInsets;
    } else if (self.centeredView)
        self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds) + 1.0f);
    
}

@end
