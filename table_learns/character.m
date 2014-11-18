//
//  character.m
//  table_learns
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "character.h"

@implementation character

@synthesize name, tagline, blurb, image_name;

-(instancetype)init_dwarf_with_name: (NSString *) p_name
                        and_tagline: (NSString *) t_line
                          and_blurb: (NSString *) about
                          and_image: (NSString *) i_name{
    self = [super init];
    name = p_name;
    tagline = t_line;
    blurb = about;
    image_name = i_name;
    return self;
}

@end
