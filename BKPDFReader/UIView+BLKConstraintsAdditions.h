//
//  UIView(BLKConstraintsAdditions).h
//  OneHandReader
//
//  Created by black9 on 14/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(BLKConstraintsAdditions)

- (void)blk_pinViewToSuperviewEdgesWithInsets:(UIEdgeInsets)insets;

- (void)blk_setSizeOfView:(CGSize)viewSize;

@end
