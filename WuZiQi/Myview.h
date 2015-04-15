//
//  Myview.h
//  WuZiQi
//
//  Created by mac book on 13-6-18.
//  Copyright (c) 2013年 mac book. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Myview : UIView<UIAlertViewDelegate>{

    Boolean b1;
    int a[20][20];
    int x,y;
}
@property (strong,nonatomic) NSMutableArray * arr;

-(void)drawLineInContext:(CGContextRef)context;
-(void)drawrectContext:(CGContextRef)context;
-(void)bianli1:(int)k bianli2:(int)l flag:(int)f;
-(void)clear;
-(void)win: (NSString *)str ;
@end
