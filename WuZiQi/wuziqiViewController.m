//
//  wuziqiViewController.m
//  WuZiQi
//
//  Created by mac book on 13-6-18.
//  Copyright (c) 2013年 mac book. All rights reserved.
//

#import "wuziqiViewController.h"
#import "Myview.h"

@interface wuziqiViewController ()

@property(strong,nonatomic)Myview * my;

@end

@implementation wuziqiViewController

- (void)viewDidLoad
{
//    一定要把创建的my这个对象和view关联起来
    
    self.my = [[Myview alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
    [self.view addSubview:self.my];
    [self.my setBackgroundColor:[UIColor clearColor]];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn:(id)sender {
    
//    self.my=[[Myview alloc ]init];
    [self.my clear];
    //[self.del clear];
   // my.arr=[[NSMutableArray alloc]init];
    //[my.arr removeAllObjects];
//    [self.my setNeedsDisplay];
    NSLog(@"%lu",(unsigned long)self.my.arr.count);
    self.text.text=@"五子棋";
}

@end
