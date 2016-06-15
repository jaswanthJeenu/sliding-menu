//
//  MenuViewController.m
//  SlidingMenu
//
//  Created by Jaswanth Jeenu on 01/06/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController (){
    NSArray *menu;
}

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    menu = [[NSArray alloc]initWithObjects:@"My Account",@"Share App",@"About Wheelstreet",@"How It Works",@"Terms and Conditions",@"Policies",@"Contact Us",@"FAQs",@"Logout", nil];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return menu.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuse id"];
    NSString *title = [menu objectAtIndex:indexPath.row];
    cell.textLabel.text = title;
    cell.backgroundColor = [UIColor colorWithRed:0.0f green:255.0f blue:255.0f alpha:1.0];
    return cell;
    
}

@end
