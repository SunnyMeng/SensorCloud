//
//  TTTableViewController+SMCategory.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "TTTableViewController+SMCategory.h"

@implementation TTTableViewController (SMCategory)

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    //reset height
    //[self resetHeight];
}

- (void)resetHeight{
    CGFloat viewHeight = ApplicationHeight;
    self.view.height         = viewHeight;
    self.tableView.height    = self.view.height;
    
    if (self.tabBarController) {
        if (self.tabBarController.tabBar.hidden == NO) {
            self.view.height        -= Height_TabBar;
            self.tableView.height    = self.view.height;
        }
        if (self.tabBarController.navigationController) {
            if (self.tabBarController.navigationController.navigationBarHidden == NO) {
                self.view.height         -= Height_NavigationBar;
                self.tableView.height     = self.view.height;
            }
        }
    }
}

@end
