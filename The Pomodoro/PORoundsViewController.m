//
//  PORoundsViewController.m
//  The Pomodoro
//
//  Created by TYLER on 4/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PORoundsViewController.h"

static NSString *reuseID = @"reuseID";


@interface PORoundsViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation PORoundsViewController

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        [self registerForNotifications];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Rounds";
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseID];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (void)dealloc
//{
//    [self unregisterForNotifications];
//}

#pragma mark by Tyler - TableView DataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[tableView dequeueReusableCellWithIdentifier:reuseID];
                             NSArray *roundsArray = [RoundsController sharedInstance].roundsTimes;
                             NSNumber *minutes = roundsArray[indexPath.row];
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
