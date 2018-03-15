//
//  UIView+createFrame.h
//  通过代码适配
//
//  Created by 碧海 on 16/7/27.
//  Copyright © 2016年 碧海. All rights reserved.
//

#import <UIKit/UIKit.h>

#define screenRect [UIScreen mainScreen].bounds

#define IPADMINI (screenRect.size.width == 1024) && (screenRect.size.height == 768)

#define IPAD (screenRect.size.width == 2048) && (screenRect.size.height == 1536)

#define IPADPRO (screenRect.size.width == 2732) && (screenRect.size.height == 2048)

#define IPHONEX ([UIScreen mainScreen].bounds.size.height == 812)?1:0

#define IPHONE4 (screenRect.size.width == 320) && (screenRect.size.height == 480)

#define IPHONE5ORIPHONESE (screenRect.size.width == 320) && (screenRect.size.height == 568)

#define IPHONE6ORIPHONE7ORIPHONE8 (screenRect.size.width == 375) && (screenRect.size.height == 667)

#define IPHONE6PORIPHONE7PORIPHONE8P (screenRect.size.width == 414) && (screenRect.size.height == 736)

#define IPHONE7p (screenRect.size.width == 414) && (screenRect.size.height == 736)


@interface UIView (createFrame)
+ (CGRect)getHorizontalRectWithX:(CGFloat)x
                               Y:(CGFloat)y
                           width:(CGFloat)w
                       andHeight:(CGFloat)h;

+ (CGRect)getRectWithX:(CGFloat)x
                    Y:(CGFloat)y
                width:(CGFloat)w
            andHeight:(CGFloat)h;

+ (CGFloat)getX:(CGFloat)X;

+ (CGFloat)getY:(CGFloat)Y;

+ (CGFloat)getHigh:(CGFloat)high;

+ (CGFloat)getWidth:(CGFloat)width;
@end
