//
//  ViewController.m
//  SSZipArchive文件压缩和解压
//
//  Created by Dear on 16/10/8.
//  Copyright © 2016年 Dear. All rights reserved.
//

#import "ViewController.h"
#import "SSZipArchive.h"

@interface ViewController ()

@end

@implementation ViewController
/*
 第三方:SSZipArchive
 使用场景:下载表情包
 使用:
 1)导入libz.1.1.3.tbd
 2)导入SSZipArchive库
 
 */

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self unzip];
}

// 压缩多个文件
-(void)zip1{
    
    NSArray *arrayM = @[
                        @"/Users/dear/Desktop/clock.png",
                        @"/Users/dear/Desktop/bg_01.png"
                        ];
    
    /*
     第一个参数:压缩文件的目标路径
     第二个参数:要压缩文件的路径(数组)
     */
    [SSZipArchive createZipFileAtPath:@"/Users/dear/Desktop/xj.zip" withFilesAtPaths:arrayM];
}

// 压缩文件夹
-(void)zip2
{
    [SSZipArchive createZipFileAtPath:@"/Users/dear/Desktop/xj.zip" withContentsOfDirectory:@"/Users/dear/Desktop/xj"];
}

// 解压
-(void)unzip
{
    /*
     第一个参数:要解压的文件在哪里
     第二个参数:目的地
     */
    [SSZipArchive unzipFileAtPath:@"/Users/dear/Desktop/xj.zip" toDestination:@"/Users/dear/Desktop/xj123"];
}
@end
