# webP-Demo

#### 重点
    问题 ： Error installing libwebp
    解决方案：请看下文 （能让你少走弯路的分享）
    

#### 项目介绍
webP格式的使用：
    1. 本地加载webp
    2. 使用URL加载webp


#### Pods
    pod 'SDWebImage', '~> 4.3.3'
    pod 'SDWebImage/WebP'

#### 使用说明
    1.  (实测：没设置也可以支持；)让SDWebImage支持WebP，设置如下Build Settings -- Preprocessor Macros , add SD_WEBP=1
    2.  jx_setWebPWithUrl   -  使用URL加载webp
    3.  jx_setWebPWithWebPName   -  本地加载webP

#### 能让你少走弯路的分享
    1. Pods update后 引入文件报错
        解决：Pods -> Build settings - > Build Active Architecture Only - > NO;
    
    2. Error installing libwebp
        解决1：文明上网 或 修改host文件
            修改host文件
            https://github.com/dengbin9009/MyFiles/blob/master/%E7%94%A8%E4%BA%8EPod%E7%9A%84Hosts
            覆盖本机原先的Host（本机本间地址/etc/hosts）文件
            
        解决2：  原文：http://www.alpface.com/article/2018/4/15/51.html
                转发：https://www.jianshu.com/p/34204fd27514

#### 交流

QQ: 1103868202  木星




