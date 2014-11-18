//
//  dwarf_detail_view_controller.m
//  table_learns
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "dwarf_detail_view_controller.h"

@interface dwarf_detail_view_controller ()

@end

@implementation dwarf_detail_view_controller

@synthesize dwarf_about, dwarf_image, dwarf_name_label, dwarf_subtitle_label, selected_character;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //dwarf_image = [UIImage imageNamed:<#(NSString *)#>];
    //NSLog(@"The dwarf is %@", dwarf);
    
    dwarf_name_label.text = [selected_character name];
    dwarf_image.image = [UIImage imageNamed:[selected_character image_name]];
    dwarf_subtitle_label.text = [selected_character tagline];
    dwarf_about.text = [selected_character blurb];
    dwarf_image.clipsToBounds = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
