//
//  ViewController.m
//  SlidingMenu
//
//  Created by Jaswanth Jeenu on 01/06/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (IBAction)btnLoginClicked:(id)sender {
}
@end
