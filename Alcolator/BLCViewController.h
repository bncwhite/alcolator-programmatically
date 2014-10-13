//
//  ViewController.h
//  Alcolator
//
//  Created by Bradley White on 10/11/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLCViewController : UIViewController

@property (strong, nonatomic) UITextField *beerPercentTextField;
@property (strong, nonatomic) UISlider *beerCountSlider;
@property (strong, nonatomic) UILabel *resultLabel;


- (void)buttonPressed:(UIButton *)sender;

@end

