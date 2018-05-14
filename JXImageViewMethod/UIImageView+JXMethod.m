//
//  UIImageView+JXMethod.m
//  webp-Demo
//
//  Created by admxjx on 2018/5/14.
//  Copyright © 2018年 admxjx. All rights reserved.
//

#import "UIImageView+JXMethod.h"
#import "SDImageCache.h"
#import "SDWebImage/UIImageView+WebCache.h"
#import "UIImage+WebP.h"

@implementation UIImageView (JXMethod)

-(void)jx_setWebPWithUrl:(NSString *)URLStr
{
    NSURL *url = [NSURL URLWithString:URLStr];
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.image = [UIImage sd_imageWithWebPData:data];
}

-(void)jx_setWebPWithWebPName:(NSString *)webPName
{
    NSString * htmlPath = [[NSBundle mainBundle] pathForResource:webPName
                                                          ofType:@"webp"];
    NSData *data = [NSData dataWithContentsOfFile:htmlPath];
    self.image = [UIImage sd_imageWithWebPData:data];
}

-(void)jx_setImageWithUrl:(NSString*)url
{
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage: [UIImage imageNamed:@""] ];
}

-(void)jx_setImageWithImageName:(NSString*)imgName
{
    [self setImage:[UIImage imageNamed:imgName]];
}

- (void)clearCacheWithUrl:(NSString *)url
{
    [[SDImageCache sharedImageCache] removeImageForKey:url withCompletion:nil];
}



@end
