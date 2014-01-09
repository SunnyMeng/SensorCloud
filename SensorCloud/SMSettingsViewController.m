//
//  SMSettingsViewController.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMSettingsViewController.h"

#define ImageName_Tab_Normal                    @"设置"
#define ImageName_Tab_Selected                  @"设置_pressed"

@interface SMSettingsViewController ()

@end

@implementation SMSettingsViewController

#pragma mark - init/dealloc
- (void)dealloc{
    
    
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - view life circle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self initialize];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - initialize
- (void)initialize{
    //设置标题
    self.title = @"我的设置";
    
    self.view.backgroundColor = [UIColor redColor];
}

#pragma mark - setter/getter
- (UITabBarItem *)tabBarItem{
    UITabBarItem * tabBarItem   = nil;
    
    if (SYSTEM_VERSION >= 7.0) {
        tabBarItem              = [[[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:ImageName_Tab_Normal] selectedImage:[UIImage imageNamed:ImageName_Tab_Selected]] autorelease];
    }else{
        tabBarItem              = [[[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:ImageName_Tab_Normal] tag:3] autorelease];
        [tabBarItem setFinishedSelectedImage:[UIImage imageNamed:ImageName_Tab_Selected] withFinishedUnselectedImage:[UIImage imageNamed:ImageName_Tab_Normal]];
    }
    
    return tabBarItem;
}

- (NSString *)title{
    return @"我的设置";
}

@end
