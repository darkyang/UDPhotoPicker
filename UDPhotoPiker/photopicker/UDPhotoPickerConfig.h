//
//  UDPhotoPickerConfig.h
//  UDPhotoPiker
//
//  Created by 赵琨 on 2020/6/17.
//  Copyright © 2020 UD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UDDeine.h"

NS_ASSUME_NONNULL_BEGIN



@interface UDPhotoPickerConfig : NSObject

//功能相关设置
@property (nonatomic, assign) NSInteger maxPickCount;
@property (nonatomic, assign) NSTimeInterval maxDuation;
@property (nonatomic, assign) UDPhotoPickerAlbumSortType sortType;
/// 是否返回原始资源（未经过压缩的资源）
@property (nonatomic, assign) BOOL supplyOriginalResourceOrNot;

//UI相关设置
/// 相册选择页的最大列数
@property (nonatomic, assign) NSInteger maxColumn;
/// 是否显示当前选中的序号
@property (nonatomic, assign) BOOL showSelectedIndex;
/// 当已选资源数量达到上限时，是否为不可选资源添加蒙层
@property (nonatomic, assign) BOOL showUnSelectableLayer;
/// 隐藏不可选的资源
@property (nonatomic, assign) BOOL hidePhotosUnSelectable;

//权限相关
@property (nonatomic, assign) BOOL allowPickPhoto;
@property (nonatomic, assign) BOOL allowTakePhoto;
@property (nonatomic, assign) BOOL allowPickVideo;
@property (nonatomic, assign) BOOL allowPickingMultipleVideo;
@property (nonatomic, assign) BOOL allowTakeVideo;
@property (nonatomic, assign) BOOL allowPickGIF;
@property (nonatomic, assign) BOOL allowCrop;
@property (nonatomic, assign) BOOL allowPickingOriginalPhoto;

@property (nonatomic, assign) BOOL needFixComposition;

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
