//
//  UIView+createFrame.m
//  通过代码适配
//
//  Created by 碧海 on 16/7/27.
//  Copyright © 2016年 碧海. All rights reserved.
//

#import "UIView+createFrame.h"

@implementation UIView (createFrame)
+ (CGRect)getRectWithX:(CGFloat)x
                     Y:(CGFloat)y
                 width:(CGFloat)w
             andHeight:(CGFloat)h
{
    
    CGRect tempRect = CGRectZero;
    if ((IPHONE4))
    {//4,4s
        CGFloat XScole = 320.0/375;
        CGFloat YScole = 480.0/667;
        tempRect = CGRectMake(x*XScole, y*YScole, w*XScole, h*YScole);
    }else if (IPHONE5ORIPHONESE)
    {//5,5s
        CGFloat XScole = 320.0/375;
        CGFloat YScole = 568.0/667;
        tempRect = CGRectMake(x*XScole, y*YScole, w*XScole, h*YScole);
    } else if(IPHONE6ORIPHONE7ORIPHONE8)
    {//6,6s
         tempRect = CGRectMake(x, y, w, h);
    }else if(IPHONE6PORIPHONE7PORIPHONE8P)
    {////6P,6sP
        CGFloat XScole = 414/375.0;
        CGFloat YScole = 736/667.0;
        tempRect = CGRectMake(x*XScole, y*YScole, w*XScole, h*YScole);
    }
    else if(IPHONEX)
    {
        CGFloat XScole = 375/375.0;
        CGFloat YScole = (812-34-44)/667.0;
        tempRect = CGRectMake(x*XScole, y*YScole, w*XScole, h*YScole);
    }
    return tempRect;
}

+ (CGRect)getHorizontalRectWithX:(CGFloat)x
                               Y:(CGFloat)y
                           width:(CGFloat)w
                       andHeight:(CGFloat)h
{
    
    CGRect tempRect = CGRectZero;
    if ((IPHONE4))
    {//4,4s
        CGFloat XScole = 320.0/375;
        CGFloat YScole = 480.0/667;
        tempRect = CGRectMake(x*YScole, y*XScole, w*XScole, h*YScole);
    }else if (IPHONE5ORIPHONESE)
    {//5,5s
        CGFloat XScole = 320.0/375;
        CGFloat YScole = 568.0/667;
        tempRect = CGRectMake(x*YScole, y*XScole, w*XScole, h*YScole);
    } else if(IPHONE6ORIPHONE7ORIPHONE8)
    {//6,6s
        tempRect = CGRectMake(x, y, w, h);
    }else if(IPHONE6PORIPHONE7PORIPHONE8P)
    {////6P,6sP
        CGFloat XScole = 414/375.0;
        CGFloat YScole = 736/667.0;
        tempRect = CGRectMake(x*YScole, y*XScole, w*XScole, h*YScole);
    }
    else if(IPHONEX)
    {
        CGFloat XScole = 375/375.0;
        CGFloat YScole = (812-34-44)/667.0;
        tempRect = CGRectMake(x*YScole+44, y*XScole, w*XScole, h*YScole);
    }
    return tempRect;
}

+ (CGFloat)getX:(CGFloat)X
{
    CGFloat tempRect = 0;
    if ((IPHONE4))
    {//4,4s
        CGFloat XScole = 320.0/375;
        tempRect = X*XScole;
    }else if (IPHONE5ORIPHONESE)
    {//5,5s
        CGFloat XScole = 320.0/375;
        tempRect = X*XScole;
    } else if(IPHONE6ORIPHONE7ORIPHONE8)
    {//6,6s
        tempRect =X;
    }else if(IPHONE6PORIPHONE7PORIPHONE8P)
    {////6P,6sP
        CGFloat XScole = 414/375.0;
       
        tempRect = X*XScole;
    }
    else if(IPHONEX)
    {
        CGFloat XScole = 375/375.0;
        
        tempRect = X*XScole;
    }
    return tempRect;
    
}

+ (CGFloat)getY:(CGFloat)Y
{
    CGFloat tempRect = 0;
    if ((IPHONE4))
    {//4,4s
       
        CGFloat YScole = 480.0/667;
        tempRect = Y*YScole;
    }else if (IPHONE5ORIPHONESE)
    {//5,5s
       
        CGFloat YScole = 568.0/667;
        tempRect = Y*YScole;
    } else if(IPHONE6ORIPHONE7ORIPHONE8)
    {//6,6s
        tempRect = Y;
    }else if(IPHONE6PORIPHONE7PORIPHONE8P)
    {////6P,6sP
        CGFloat YScole = 736/667.0;
        tempRect = Y*YScole;
    }
    else if(IPHONEX)
    {
        CGFloat YScole = (812-34-44)/667.0;
        tempRect = Y*YScole;
    }
    return tempRect;
    
}

+ (CGFloat)getHigh:(CGFloat)high
{
    CGFloat tempRect = 0 ;
    if ((IPHONE4))
    {//4,4s
        CGFloat YScole = 480.0/667;
        tempRect = high*YScole;
    }else if (IPHONE5ORIPHONESE)
    {//5,5s
        CGFloat YScole = 568.0/667;
        tempRect = high*YScole;
    }else if(IPHONE6ORIPHONE7ORIPHONE8){//6,6s
        tempRect = high;
    }else if(IPHONE6PORIPHONE7PORIPHONE8P){////6P,6sP
        CGFloat YScole = 736/667.0;
        tempRect = high*YScole;
    }
    else if(IPHONEX)
    {
        CGFloat YScole = (812-34-44)/667.0;
        tempRect = high*YScole;
    }
    return tempRect;
}

+ (CGFloat)getWidth:(CGFloat)width
{

    CGFloat tempRect = 0 ;
    if ((IPHONE4))
    {//4,4s
        CGFloat XScole = 320.0/375;
        tempRect = width*XScole;
    }else if (IPHONE5ORIPHONESE)
    {//5,5s
        CGFloat XScole = 320.0/375;
        tempRect = width*XScole;

    }else if(IPHONE6ORIPHONE7ORIPHONE8)
    {//6,6s
        tempRect = width;
    }else if(IPHONE6PORIPHONE7PORIPHONE8P)
    {////6P,6sP
         CGFloat XScole = 414/375.0;
        tempRect = width*XScole;
    }
    else if(IPHONEX)
    {
        CGFloat XScole = 375/375.0;
        tempRect = width*XScole;
    }
    return tempRect;

}

@end
