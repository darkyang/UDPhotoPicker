//
//  UDDeine.h
//  UDPhotoPiker
//
//  Created by 赵琨 on 2020/6/17.
//  Copyright © 2020 UD. All rights reserved.
//

#ifndef UDDeine_h
#define UDDeine_h

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, UDPhotoPickerAlbumSortType){
    UDPhotoPickerAlbumSortByCreationDate = 0,
    UDPhotoPickerAlbumSortByModificationDate,
    UDPhotoPickerAlbumSortByFavorite 
};

#define UDLazyGetMethod(class, propertyName)            \
- (class *)propertyName{                                \
    if (!_##propertyName) {                             \
        _##propertyName = [[class alloc] init];         \
    }                                                   \
    return _##propertyName;                             \
}

#define UDDefaultLeftMargin 16
#define UDDefaultRightMargin 16


#endif /* UDDeine_h */
