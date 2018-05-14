//
//  UIImageView+JXMethod.h
//  webp-Demo
//
//  Created by admxjx on 2018/5/14.
//  Copyright © 2018年 admxjx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (JXMethod)
/*
 *  使用URL加载webP
 */
-(void)jx_setWebPWithUrl:(NSString *)URLStr;

/*
 *  本地加载webP
 */
-(void)jx_setWebPWithWebPName:(NSString *)webPName;

/*
 *  使用URL加载webP
 */
-(void)jx_setImageWithUrl:(NSString*)url;

/*
 *  本地加载图片
 */
-(void)jx_setImageWithImageName:(NSString*)imgName;

/*
 *  使用URL清除图片缓存
 */
- (void)clearCacheWithUrl:(NSString *)url;
@end
