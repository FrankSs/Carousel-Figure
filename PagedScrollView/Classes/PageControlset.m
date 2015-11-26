//
//  PageControlset.m
//  PagedScrollView
//
//  Created by 李赐岩 on 15/11/20.
//  Copyright © 2015年 Apple Inc. All rights reserved.
//

#import "PageControlset.h"

#define PAGECONTROL_PLIST_FILENAME @"pageControl"

@implementation PageControlset
-(instancetype)init{
    self = [super init];
    if (self) {
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:PAGECONTROL_PLIST_FILENAME ofType:@"plist"];
        NSDictionary *dic = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
        self.originX = [[dic objectForKey:@"originX"] integerValue];
        self.originY = [[dic objectForKey:@"originY"] integerValue];
        self.sizeWidth = [[dic objectForKey:@"sizeWidth"] integerValue];
        self.sizeHigh = [[dic objectForKey:@"sizeHeight"] integerValue];
        self.pagecount = [[dic objectForKey:@"pageCount"] integerValue];
        self.pageTintColor = [dic objectForKey:@"pageTintColor"];
        self.currentColor = [dic objectForKey:@"currentTintColor"];
    }
    return self;
}

@end
