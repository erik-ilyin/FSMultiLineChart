//
//  UIColor+FSPalette.h
//  FlurrySummary
//
//  Created by Arthur GUIBERT on 16/07/2014.
//  Copyright (c) 2014 Arthur GUIBERT. All rights reserved.
//

#import <UIKit/UIKit.h>
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]
@interface UIColor (FSPalette)

+ (instancetype)fsRed;
+ (instancetype)fsOrange;
+ (instancetype)fsYellow;
+ (instancetype)fsGreen;
+ (instancetype)fsLightBlue;
+ (instancetype)fsDarkBlue;
+ (instancetype)fsPurple;
+ (instancetype)fsPink;
+ (instancetype)fsDarkGray;
+ (instancetype)fsLightGray;
+ (UIColor *)colorFromHexString:(NSString *)hexString;

@end
