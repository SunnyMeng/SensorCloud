//
//  SMSensorListDataSource.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMSensorListDataSource.h"
#import "SMSensorCell.h"

@interface SMSensorListRequestModel() <SMWebServiceDelegate>

@property (nonatomic, retain) SMWebService * webService;

@end

@implementation SMSensorListRequestModel

@synthesize webService  = _webService;
@synthesize listModel   = _listModel;

#pragma mark - dealloc
- (void)dealloc{
    _webService.delegate = nil;
    [_webService         release];
    
    [super dealloc];
}

#pragma mark - setter/getter
- (SMWebService *)webService{
    if (_webService == nil) {
        self.webService         = [[[SMWebService alloc] init] autorelease];
        _webService.delegate    = self;
    }
    
    return _webService;
}

- (SMListModel *)listModel{
    if (_listModel == nil) {
        self.listModel = [[[SMListModel alloc] init] autorelease];
    }
    
    return _listModel;
}

#pragma mark - load request
- (void)load:(TTURLRequestCachePolicy)cachePolicy more:(BOOL)more{
    if (!more) {
        
    }else{
        
    }
}

#pragma mark - NTWebServiceDelegate
- (void)webservice:(SMWebService *)webservice didStartLoadRequest:(TTURLRequest *)request{
    [super requestDidStartLoad:request];
}

- (void)webservice:(SMWebService *)webservice didFinishLoadRequest:(TTURLRequest *)request withData:(SMModel *)dataModel{
    SMListModel * listModel = (SMListModel *)dataModel;
    
    self.hasNoMore = !listModel.hasMore;
    
    if ([[request.parameters objectForKey:@"lastNumber"] isEqualToString:@""]) {
        //第一次拉取数据或下拉刷新
        self.listModel.items = listModel.items;
    }else{
        //数据按时间递减，因此新数据直接拼接在老数据之后（老数据其实为最新数据）
        [self.listModel.items addObjectsFromArray:listModel.items];
        
    }
    
    self.listModel.lastNumber       = listModel.lastNumber;
    self.listModel.lastNumberString = listModel.lastNumberString;
    
    [super requestDidFinishLoad:request];
}

- (void)webservice:(SMWebService *)webservice didFailLoadRequest:(TTURLRequest *)request withErrorData:(SMModel *)errorData{
    [super request:request didFailLoadWithError:[(SMErrorModel *)errorData error]];
}


@end

@implementation SMSensorListDataSource

#pragma mark - init / dealloc
- (id)init{
    if (self = [super init]) {
        self.model = [[[SMSensorListRequestModel alloc] init] autorelease];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

#pragma mark - call

- (void)tableViewDidLoadModel:(UITableView *)tableView{
    SMListModel * listModel = [(SMSensorListRequestModel *)self.model listModel];
    
    self.items = listModel.items;
    
}

- (Class)tableView:(UITableView *)tableView cellClassForObject:(id)object{
    if ([object isKindOfClass:[SMPositionModel class]]) {
        return [SMSensorCell class];
    }
    return [super tableView:tableView cellClassForObject:object];
}

- (NSString *)titleForEmpty {
    return nil;
}

- (UIImage *)imageForEmpty {
    return nil;
}

- (UIImage *)imageForError:(NSError *)error {
    return nil;
}

- (NSString *)titleForError:(NSError *)error {
    return nil;
}

- (NSString *)subtitleForError:(NSError *)error {
    return @"\n\n";
}


@end
