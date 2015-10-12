//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Adam Goldberg on 2015-10-12.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyScrollView;

@protocol MyScrollViewDelegate <NSObject>

-(void)myScrollViewDidScroll:(MyScrollView*)scrollview point:(CGPoint)point;

@end




@interface MyScrollView : UIView

@property (nonatomic, weak) id <MyScrollViewDelegate> delegate;

@property (nonatomic, assign) CGSize contentSize;






@end
