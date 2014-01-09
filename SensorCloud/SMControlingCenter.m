//
//  SMControlingCenter.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMControlingCenter.h"
#import "SMSensorListViewController.h"
#import "SMBlogListViewController.h"
#import "SMSettingsViewController.h"
#import "SMTabBarViewController.h"

static UIViewController * _rootViewController = nil;
static SMControlingCenter * _sharedInstance = nil;

@implementation SMControlingCenter

+ (SMControlingCenter *)sharedInstance{
    if (_sharedInstance == Nil) {
        _sharedInstance = [[SMControlingCenter alloc] init];
    }
    
    return _sharedInstance;
}

- (UIViewController *)rootViewController{
    if (_rootViewController == nil) {
        NSArray * viewControllers                   = @[[self controllerForTab1],[self controllerForTab2],[self controllerForTab3]];
        
        SMTabBarViewController * tabController      = [[[SMTabBarViewController alloc] init] autorelease];
        tabController.view.frame                    = CGRectMake(0, 0, ApplicationWidth, ApplicationHeight - Height_NavigationBar);
        tabController.selectedIndex                 = 0;
        tabController.delegate                      = tabController;
        [tabController setViewControllers:viewControllers];
        
        UINavigationController * navController  = [[[UINavigationController alloc] initWithRootViewController:tabController] autorelease];
        
        _rootViewController                     = navController;
    }
    
    return _rootViewController;
}

- (UIViewController *)controllerForTab1{
    SMSensorListViewController * controller = [[[SMSensorListViewController alloc] init] autorelease];
    
    return controller;
}

- (UIViewController *)controllerForTab2{
    SMBlogListViewController * controller = [[[SMBlogListViewController alloc] init] autorelease];
    
    return controller;
}

- (UIViewController *)controllerForTab3{
    SMSettingsViewController * controller = [[[SMSettingsViewController alloc] init] autorelease];
    
    return controller;
}


@end
