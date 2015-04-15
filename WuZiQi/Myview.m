//
//  Myview.m
//  WuZiQi
//
//  Created by mac book on 13-6-18.
//  Copyright (c) 2013年 mac book. All rights reserved.
//

#import "Myview.h"

@implementation Myview
{
    CGPoint loc;
    
}

@synthesize arr;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


-(void)drawLineInContext:(CGContextRef)context{

    CGContextSetLineWidth(context, 1.0);
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
    
    
    CGContextMoveToPoint(context, 30, 30);
    CGContextAddLineToPoint(context, 30, 350);
    
    CGContextMoveToPoint(context, 50, 30);
    CGContextAddLineToPoint(context, 50, 350);
    
    CGContextMoveToPoint(context, 70, 30);
    CGContextAddLineToPoint(context, 70, 350);
    
    CGContextMoveToPoint(context, 90, 30);
    CGContextAddLineToPoint(context, 90, 350);
    
    CGContextMoveToPoint(context, 110, 30);
    CGContextAddLineToPoint(context, 110, 350);
    
    CGContextMoveToPoint(context, 130, 30);
    CGContextAddLineToPoint(context, 130, 350);
    
    CGContextMoveToPoint(context, 150, 30);
    CGContextAddLineToPoint(context, 150, 350);
    
    CGContextMoveToPoint(context, 170, 30);
    CGContextAddLineToPoint(context, 170, 350);
    
    CGContextMoveToPoint(context, 190, 30);
    CGContextAddLineToPoint(context, 190, 350);
    
    CGContextMoveToPoint(context, 210, 30);
    CGContextAddLineToPoint(context, 210, 350);
    
    
    CGContextMoveToPoint(context, 230, 30);
    CGContextAddLineToPoint(context, 230, 350);
    
    CGContextMoveToPoint(context, 250, 30);
    CGContextAddLineToPoint(context, 250, 350);
    
    
    CGContextMoveToPoint(context, 270, 30);
    CGContextAddLineToPoint(context, 270, 350);
    
    
    CGContextMoveToPoint(context, 290, 30);
    CGContextAddLineToPoint(context, 290, 350);
    
    CGContextMoveToPoint(context, 30, 30);
    CGContextAddLineToPoint(context, 290, 30);
    
    CGContextMoveToPoint(context, 30, 50);
    CGContextAddLineToPoint(context, 290, 50);
    
    
    CGContextMoveToPoint(context, 30, 70);
    CGContextAddLineToPoint(context, 290, 70);
    
    
    CGContextMoveToPoint(context, 30, 90);
    CGContextAddLineToPoint(context, 290, 90);
    
    
    
    CGContextMoveToPoint(context, 30, 110);
    CGContextAddLineToPoint(context, 290, 110);
    
    CGContextMoveToPoint(context, 30, 130);
    CGContextAddLineToPoint(context, 290, 130);
    
    
    CGContextMoveToPoint(context, 30, 150);
    CGContextAddLineToPoint(context, 290, 150);
    
    
    
    CGContextMoveToPoint(context, 30, 170);
    CGContextAddLineToPoint(context, 290, 170);
    
    
    CGContextMoveToPoint(context, 30, 190);
    CGContextAddLineToPoint(context, 290, 190);
    
    
    CGContextMoveToPoint(context, 30, 210);
    CGContextAddLineToPoint(context, 290, 210);
    
    
    CGContextMoveToPoint(context, 30, 230);
    CGContextAddLineToPoint(context, 290, 230);
    
    
    
    CGContextMoveToPoint(context, 30, 250);
    CGContextAddLineToPoint(context, 290, 250);
    
    
    CGContextMoveToPoint(context, 30, 270);
    CGContextAddLineToPoint(context, 290, 270);
    
    
    CGContextMoveToPoint(context, 30, 290);
    CGContextAddLineToPoint(context, 290, 290);
    
    
    CGContextMoveToPoint(context, 30, 310);
    CGContextAddLineToPoint(context, 290, 310);
    
    
    CGContextMoveToPoint(context, 30, 330);
    CGContextAddLineToPoint(context, 290, 330);
    
    
    CGContextMoveToPoint(context, 30, 350);
    CGContextAddLineToPoint(context, 290, 350);
    CGContextStrokePath(context);
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *atouch=[touches anyObject];
    loc=[atouch locationInView:self];
    NSString *str=NSStringFromCGPoint(loc);
//    为什么arr数组不能初始化在initwithframe中？？初始化在那个里面不能往数组中加数据，为什么？
    if (arr == nil) {
        arr=[[NSMutableArray alloc]init];
        //x=0;y=0;
         
        NSLog(@"%lu",(unsigned long)arr.count);
        
    }
    NSLog(@"%d",a[x][y]);
    if(a[x][y]!=1||a[x][y]!=-1){
        [arr addObject:str];
        [self setNeedsDisplay];
        NSLog(@"%lu",(unsigned long)arr.count);
        

    }
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

}



-(void)clear{
    [arr removeAllObjects];
    for (int i=0; i<=20; i++)
        for (int j=0; j<=20; j++) {
            a[i][j]=0;
        }
    [self setNeedsDisplay];
//    arr=[[NSMutableArray alloc]init];
}

-(void)drawrectContext:(CGContextRef)context{
    b1=NO;
    CGContextSetLineWidth(context, 10);
//    if ([arr count]>6) {
//        //[arr removeAllObjects];
//        [self clear];
//    }
    //NSLog(@"%d",arr.count);
    for (int j=0; j<[arr count]; j++) {
                
        CGPoint   p=CGPointFromString([arr objectAtIndex:j]);
         x=((p.x-30)/20+0.5);
         y=((p.y-30)/20+0.5);
        CGRect rc=CGRectMake(x*20+23, y*20+23, 13, 13);
        
        if (b1) {
            CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
            a[x][y]=1;
            [self bianli1:x bianli2:y flag:a[x][y]];
            
            b1=!b1;
            CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);

           // CGContextAddEllipseInRect(context, rc);
            CGContextFillEllipseInRect(context, rc);

            //CGContextFillPath(context);


        }
        else{
            CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
            a[x][y]=-1;
            [self bianli1:x bianli2:y flag:a[x][y]];
            b1=!b1;
            CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
            //CGContextAddEllipseInRect(context, rc);

           CGContextFillEllipseInRect(context, rc);
            //CGContextFillPath(context);

        }
        CGContextStrokePath(context);


        //CGContextFillEllipseInRect(context, rc);
        

    }

}

//int iswin(int f,int k,int m){
//    int h=0;
//    for(int j=1;j<20;j++)
//    {
//        if(a[k][j]==f)
//          {h++;
//        if(h>=5) return f;} else h=0;}
//    h=0;
//    for(int i=1;i<20&&i>0&&i<20;i++)
//    {
//        if(a[i][m]==f) {h++; if(h>=5) return f;} else h=0;}
//    h=0;
//    int r = k,t = m;
//    while(r>1&&t>1){ r--;t--;}
//    //  从该点按米字形搜索（i++,j++），（i--,j++） 从该直线最左端开始搜索
//    if(r==1)
//    {
//        for(int i=1,j=t;i<20&&j<20&&i>0&&j>0;i++,j++)
//        { if(a[i][j]==f) {h++; if(h>=5) return f;} else h=0;}
//        h=0;
//    }
//    if(t==1){
//        for(int i=r,j=1;i<20&&j<20&&i>0&&j>0;i++,j++) { if(a[i][j]==f) {h++; if(h>=5) return f;} else h=0;}
//        h=0;
//    }
//    r = k; t = m;
//    while(r<19&&t>1){ r++;t--;}
//    if(r==19){
//        for(int i=19,j=t;i<20&&j<20&&i>0&&j>0;i--,j++){ if(a[i][j]==f) {h++; if(h>=5) return f;} else h=0;}
//        h=0;
//    }
//    if(t==1){
//        for(int i=r,j=1;i<20&&j<20&&i>0&&j>0;i--,j++) { if(a[i][j]==f) {h++; if(h>=5) return f;} else h=0;}
//        h=0;
//    }
//    return 0;
//}



-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
}
-(void)bianli1:(int)k bianli2:(int)m flag:(int)f{
    int h=0;
        for(int j=0;j<18;j++)
        {
            if(a[k][j]==f)
              {h++;
                  if(h>=5)                 {
                      if (f==-1) {
                          [self win:@"白棋赢"];
                          [self clear];
                      }
                      else{
                          [self win:@"黑棋赢"];
                          [self clear];
                      }
                      NSLog(@"nihao");
                  }
} else h=0;}
        h=0;
        for(int i=0;i<15&&i>=0&&i<15;i++)
        {
            if(a[i][m]==f) {h++; if(h>=5)                 {
                if (f==-1) {
                    [self win:@"白棋赢"];
                    [self clear];

                }
                else{
                    [self win:@"黑棋赢"];
                    [self clear];

                }
                NSLog(@"nihao");
            }
} else h=0;}
        h=0;
        int r = k,t = m;
        while(r>0&&t>0){ r--;t--;}
        //  从该点按米字形搜索（i++,j++），（i--,j++） 从该直线最左端开始搜索
        if(r==0)
        {
            for(int i=0,j=t;i<15&&j<18&&i>=0&&j>=0;i++,j++)
            { if(a[i][j]==f) {h++; if(h>=5)                 {
                if (f==-1) {
                    [self win:@"白棋赢"];
                    [self clear];

                }
                else{
                    [self win:@"黑棋赢"];
                    [self clear];

                }
                NSLog(@"nihao");
            }
} else h=0;}
            h=0;
        }
        if(t==0){
            for(int i=r,j=0;i<15&&j<18&&i>=0&&j>=0;i++,j++) { if(a[i][j]==f) {h++; if(h>=5)                 {
                if (f==-1) {
                    [self win:@"白棋赢"];
                    [self clear];

                }
                else{
                    [self win:@"黑棋赢"];
                    [self clear];

                }
                NSLog(@"nihao");
            }
} else h=0;}
            h=0;
        }
        r = k; t = m;
        while(r<14&&t>0){ r++;t--;}
        if(r==14){
            for(int i=14,j=t;i<15&&j<18&&i>=0&&j>=0;i--,j++)
            { if(a[i][j]==f)
            {h++;
                if(h>=5)
                {
                    if (f==-1) {
                        [self win:@"白棋赢"];
                        [self clear];

                    }
                    else{
                        [self win:@"黑棋赢"];
                        [self clear];

                    }
                    NSLog(@"nihao");
                }
            } else h=0;}
            h=0;
        }
        if(t==0){
            for(int i=r,j=0;i<15&&j<18&&i>=0&&j>=0;i--,j++) { if(a[i][j]==f) {h++; if(h>=5)
                
            {
                if (f==-1) {
                    [self win:@"白棋赢"];
                    [self clear];

                }
                else{
                    [self win:@"黑棋赢"];
                    [self clear];

                }
                NSLog(@"nihao");
            }
} else h=0;}
            h=0;
        }

    
}

-(void)win:(NSString* )str{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:str delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
}


-(void)drawRect:(CGRect)rect{
    [[UIColor clearColor] set];
    UIRectFill(rect);
    CGContextRef context=UIGraphicsGetCurrentContext();
    [self drawLineInContext:context];
    if (loc.y>30&&loc.y<350&&loc.x>30&&loc.x<290) {
        [self drawrectContext:context];

    }
    // CGContextSaveGState(context);

}

@end
