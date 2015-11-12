//
//  ViewController.m
//  UIImage+CA_Demo
//
//  Created by Charles on 15/11/12.
//  Copyright (c) 2015年 Charles. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (nonatomic , strong)UIImageView *bgView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.bgView=[[UIImageView alloc]initWithFrame:SCREEN_BOUNCE];
    //根据设备自动选择需要加载的图片
    UIImage *bgImage=[UIImage imageNamed:@"demo"];
    //模糊
    self.bgView.image=[UIImage blurImage:bgImage amount:0.5];
    [self.view addSubview:self.bgView];
}
//点击截图保存到相册
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //截屏
    UIImage *screenShotImage=[UIImage screenshot];
    UIImageWriteToSavedPhotosAlbum(screenShotImage, self, @selector(imageSavedToPhotosAlbum:didFinishSavingWithError:contextInfo:), nil);
}
- (void)imageSavedToPhotosAlbum:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    NSString *message = nil;
    if (!error) {
        message = @"成功\nsuccess";
    }else
    {
        message = [error description];
    }
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"截图到相册\nscreenShot to the photo album" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确定(sure)" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
