//
//  BtnCell.h
//  HBuilder
//
//  Created by 李宏贵 on 2019/6/13.
//  Copyright © 2019 DCloud. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BtnCell;
@protocol BtnCellDelegate<NSObject>
-(void)btnCell:(BtnCell *)btnCell withSaveBtn:(UIButton *)saveBtn;
@end
@interface BtnCell : UITableViewCell
@property(nonatomic,weak) id<BtnCellDelegate>delegate;
+(instancetype)cellNibWithTableView:(UITableView *)tableView;
@end

NS_ASSUME_NONNULL_END
