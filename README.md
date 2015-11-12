# UIImage-CA
UIImage的一个分类
包括根据不同的设备选择不同的图片来保证图片不会变形,截图,添加水印,拉伸,指定位置拉伸,模糊,使用颜色生成图片.

A classification of UIImage
including according to the different images of different equipment selection to ensure that the image will not deformation, screenshots, add watermarks, stretch, stretch specified location, fuzzy, use color to generate images

1.自动根据设备选择需要的图片
  4\5\6设备尺寸不同,有时候使用一张图片会出现拉伸变形,有时候会根据设备选择需要的图片
  通过该分类可以实现所有代码不变,自动根据设备选择需要的图片即可
  图片命名方式:   
  设备:4-->.png   4s-->.@2x.png   5(S)-->.568h@2x.png    6(s)-->.667h@2x.png   6P(s)-->@3x.png
  使用方法:[UIImage imageNamed:@"demo"];  与系统方法一致不需要改变,不需要因为接入而修改代码
  
2.添加了一些常用方法
  如拉伸,截屏,模糊,指定位置添加水印,使用颜色生成图片
  
3.如果觉得好用,后期会继续添加常用功能
