//
//  BLCMainMenuViewController.m
//  Alcolator
//
//  Created by Bradley White on 10/13/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import "BLCMainMenuViewController.h"
#import "BLCViewController.h"
#import "BLCWhiskeyViewController.h"

@interface BLCMainMenuViewController ()

@end

@implementation BLCMainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = NSLocalizedString(@"Select Beverage Type", @"select beverage type");
    
    [self.wineButton setTitle:NSLocalizedString(@"Wine", @"wine") forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whiskey", @"whiskey") forState:UIControlStateNormal];

    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) loadView {
    self.view = [[UIView alloc] init];
    
    UIButton *wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    UIButton *whiskeyButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.view addSubview:wineButton];
    [self.view addSubview:whiskeyButton];
    
    self.wineButton = wineButton;
    self.whiskeyButton = whiskeyButton;
    
}

- (void) viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.wineButton.frame = CGRectMake(20, 150, 100, 50);
    [self.wineButton setBackgroundColor:[UIColor redColor]];
    self.wineButton.titleLabel.textColor = [UIColor whiteColor];
    
    self.whiskeyButton.frame = CGRectMake(CGRectGetMaxX(self.wineButton.frame) + 40, 150, 100, 50);
    [self.whiskeyButton setBackgroundColor:[UIColor purpleColor]];
    self.whiskeyButton.titleLabel.textColor = [UIColor whiteColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) winePressed:(UIButton *) sender {
    BLCViewController *wineVC = [[BLCViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void) whiskeyPressed:(UIButton *) sender {
    BLCWhiskeyViewController *whiskeyVC = [[BLCWhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
