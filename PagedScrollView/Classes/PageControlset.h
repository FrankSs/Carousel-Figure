//
//  PageControlset.h
//  PagedScrollView
//
//  Created by 李赐岩 on 15/11/20.
//  Copyright © 2015年 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PageControlset : NSObject
@property (nonatomic , assign) NSInteger originX;
@property (nonatomic , assign) NSInteger originY;
@property (nonatomic , assign) NSInteger sizeWidth;
@property (nonatomic , assign) NSInteger sizeHigh;
@property (nonatomic , assign) NSInteger pagecount;
@property (nonatomic , copy) NSString *pageTintColor;
@property (nonatomic , copy) NSString *currentColor;
@end
