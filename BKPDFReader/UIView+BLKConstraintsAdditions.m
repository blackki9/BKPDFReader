//
//  UIView(BLKConstraintsAdditions).m
//  OneHandReader
//
//  Created by black9 on 14/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#import "UIView+BLKConstraintsAdditions.h"

@implementation UIView(BLKConstraintsAdditions)

- (void)blk_pinViewToSuperviewEdgesWithInsets:(UIEdgeInsets)insets
{
    UIView* containerView = [self superview];
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:containerView
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0
                                                               constant:insets.top]];
    
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeLeading
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:containerView
                                                              attribute:NSLayoutAttributeLeading
                                                             multiplier:1.0
                                                               constant:insets.left]];
    
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:containerView
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:insets.bottom]];
    
    [containerView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeTrailing
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:containerView
                                                              attribute:NSLayoutAttributeTrailing
                                                             multiplier:1.0
                                                               constant:insets.right]];
}

- (void)blk_setSizeOfView:(CGSize)viewSize
{
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:1.0
                                                               constant:viewSize.height]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0f
                                                      constant:viewSize.width]];
}

@end
