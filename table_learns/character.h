//
//  character.h
//  table_learns
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface character : NSObject

@property (nonatomic, strong) NSString *name, *tagline, *blurb, *image_name;

-(instancetype)init_dwarf_with_name: (NSString *) p_name
                        and_tagline: (NSString *) t_line
                          and_blurb: (NSString *) about
                          and_image: (NSString *) i_name;

@end
