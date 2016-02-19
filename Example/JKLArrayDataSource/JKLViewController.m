//
//  JKLViewController.m
//  JKLArrayDataSource
//
//  Created by Jacky on 02/19/2016.
//  Copyright (c) 2016 Jacky. All rights reserved.
//

#import "JKLViewController.h"

@import JKLArrayDataSource;

@interface JKLViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) JKLArrayDataSource * dataSource;

@end

@implementation JKLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.dataSource = self.dataSource = [JKLArrayDataSource sourceWithItems:@[@"item1",@"item2",@"item3",@"item4",@"item5"] cellIdentifier:@"Cell" cellConfigureBlock:^(UITableViewCell * _Nonnull cell, id  _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        cell.textLabel.text = item;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
