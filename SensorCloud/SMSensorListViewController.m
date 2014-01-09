//
//  SMSensorListViewController.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMSensorListViewController.h"
#import "SMSensorListDataSource.h"

#define ImageName_Tab_Normal                    @"我的传感云"
#define ImageName_Tab_Selected                  @"我的传感云_pressed"


@interface SMSensorListViewController ()

@end

@implementation SMSensorListViewController

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

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];}

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
    self.title = @"天翼传感云";
    
    self.view.backgroundColor       = [UIColor redColor];
    self.view.autoresizingMask      = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
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
    return @"天翼传感云";
}

#pragma mark - TTTableViewController

 - (void)createModel {
     self.dataSource = [[[SMSensorListDataSource alloc] init] autorelease];
 }

- (id <UITableViewDelegate>)createDelegate {
    id<UITableViewDelegate> delegate_ = nil;
    
    delegate_                         = [[[TTTableViewNetworkEnabledDelegate alloc] initWithController:self withDragRefresh:YES withInfiniteScroll:YES] autorelease];
    return delegate_;
}

- (void)modelDidFinishLoad:(id <TTModel>)model {
    [super modelDidFinishLoad:model];
    
    TTURLRequestModel *mdel = (TTURLRequestModel *)model;
    if (mdel.hasNoMore) {
        self.tableView.tableFooterView = nil;
    }
}

- (void)model:(id<TTModel>)model didFailLoadWithError:(NSError *)error{
    [super model:model didFailLoadWithError:error];
    
    
}

- (void)didSelectObject:(id)object atIndexPath:(NSIndexPath*)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([self.dataSource isKindOfClass:[SMSensorListDataSource class]]) {
        
    }
}

- (BOOL)shouldLoadAtScrollRatio:(CGFloat)scrollRatio {
    return scrollRatio == 1;
}

- (void)showModel:(BOOL)show{
    [super showModel:show];
}


@end
