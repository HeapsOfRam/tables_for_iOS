//
//  dwarf_detail_view_controller.h
//  table_learns
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "character.h"

@interface dwarf_detail_view_controller : UIViewController

//@property (nonatomic, strong) NSString *dwarf;
@property (weak, nonatomic) IBOutlet UIImageView *dwarf_image;
@property (weak, nonatomic) IBOutlet UILabel *dwarf_name_label;
@property (weak, nonatomic) IBOutlet UILabel *dwarf_subtitle_label;
@property (weak, nonatomic) IBOutlet UITextView *dwarf_about;
@property character *selected_character;

@end
