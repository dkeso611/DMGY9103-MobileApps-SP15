//
//  FeteCell.m
//  Fête
//
//  Created by Kes on 4/14/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "FeteCell.h"


@implementation FeteCell

- (id)initWithStyle:(UITableViewStyle)style reuseIdentifier:(NSString *)reuseIdentifier

{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
