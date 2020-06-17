//
//  UDPhotoPickerBottomView.m
//  UDPhotoPiker
//
//  Created by 赵琨 on 2020/6/17.
//  Copyright © 2020 UD. All rights reserved.
//

#import "UDPhotoPickerBottomView.h"
#import "UDDeine.h"

@interface UDPhotoPickerBottomView ()

@property (nonatomic, strong) UIButton* leftFuncBtn;

@property (nonatomic, strong) UIView* backView;
@property (nonatomic, strong) UIImageView* iconV;
@property (nonatomic, strong) UILabel* titleLabel;

@property (nonatomic, strong) UIButton* doneBtn;

@end

@implementation UDPhotoPickerBottomView

#pragma mark - init
- (void)setupUI{
    [self addSubview:self.leftFuncBtn];
    
    [self addSubview:self.backView];
    [self.backView addSubview:self.iconV];
    [self.backView addSubview:self.titleLabel];
    
    [self addSubview:self.doneBtn];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    
}

#pragma mark - event handler
- (void)didTapLeftFuncBtn:(id)sender{
    
}

- (void)didTapCenterView:(id)sender{
    
}

- (void)didTapDoneBtn:(id)sender{
    
}

#pragma mark - getter & setter
- (UIButton*)leftFuncBtn{
    if (!_leftFuncBtn) {
        _leftFuncBtn = [UIButton buttonWithType:0];
        [_leftFuncBtn setTitle:@"--" forState:UIControlStateNormal];
        [_leftFuncBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_leftFuncBtn setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
        [_leftFuncBtn addTarget:self action:@selector(didTapLeftFuncBtn:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftFuncBtn;
}

- (UIView*)backView{
    if (!_backView) {
        _backView = [UIView new];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapCenterView:)];
        [_backView addGestureRecognizer:tap];
    }
    return _backView;
}

UDLazyGetMethod(UIImageView, iconV);

- (UILabel*)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.text = @"原图";
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.font = [UIFont systemFontOfSize:13];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _titleLabel;
}

- (UIButton*)doneBtn{
    if (!_doneBtn) {
        _doneBtn = [UIButton buttonWithType:0];
        [_doneBtn setTitle:@"发送" forState:UIControlStateNormal];
        [_doneBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_doneBtn setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
        [_doneBtn addTarget:self action:@selector(didTapDoneBtn:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _doneBtn;
}

@end
