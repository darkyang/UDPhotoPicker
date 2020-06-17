//
//  UDPhotoPickerController.m
//  UDPhotoPiker
//
//  Created by 赵琨 on 2020/6/17.
//  Copyright © 2020 UD. All rights reserved.
//

#import "UDPhotoPickerController.h"
#import "UDPhotoPickerBottomView.h"

@interface UDPhotoPickerController ()<UICollectionViewDelegate,
                                      UICollectionViewDataSource,
                                      UITableViewDelegate,
                                      UITableViewDataSource,
                                      UIImagePickerControllerDelegate>

@property (nonatomic, strong) UICollectionView* photoListView;
@property (nonatomic, strong) UITableView* albumListView;

@property (nonatomic, strong) UDPhotoPickerBottomView* bottomV;
@end

@implementation UDPhotoPickerController

#pragma mark - life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
}

#pragma mark - init
- (void)setupUI{
    
}

#pragma mark - collectionView data source

#pragma mark - collectionView delegate

#pragma mark - tableView data source

#pragma mark - tableView delegate


@end
