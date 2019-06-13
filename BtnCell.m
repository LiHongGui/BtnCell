//
//  BtnCell.m
//  HBuilder
//
//  Created by 李宏贵 on 2019/6/13.
//  Copyright © 2019 DCloud. All rights reserved.
//

#import "BtnCell.h"
@interface BtnCell()
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;

@end
static NSString *identifier = @"BtnCell";
@implementation BtnCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.saveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.saveBtn.layer.masksToBounds = YES;
    self.saveBtn.layer.cornerRadius = 3;
   
}
+(instancetype)cellNibWithTableView:(UITableView *)tableView
{
    BtnCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"BtnCell" bundle:nil] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (IBAction)addBtn:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(btnCell:withSaveBtn:)]) {
        [self.delegate btnCell:self withSaveBtn:sender];
    }
}
@end
