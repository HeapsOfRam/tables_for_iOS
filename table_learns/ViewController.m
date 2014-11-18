//
//  ViewController.m
//  table_learns
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSMutableArray *hobbits_and_dwarves_array, *subtitle_array;

@end

@implementation ViewController

@synthesize hobbits_and_dwarves_array, subtitle_array;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    hobbits_and_dwarves_array = [[NSMutableArray alloc] init];
    [hobbits_and_dwarves_array addObject:@"Frodo"];
    [hobbits_and_dwarves_array addObject:@"Samwise"];
    [hobbits_and_dwarves_array addObject:@"Pippin"];
    [hobbits_and_dwarves_array addObject:@"Merry"];
    [hobbits_and_dwarves_array addObject:@"Bilbo"];
    [hobbits_and_dwarves_array addObject:@"Bifur"];
    [hobbits_and_dwarves_array addObject:@"Bofur"];
    [hobbits_and_dwarves_array addObject:@"Bombur"];
    [hobbits_and_dwarves_array addObject:@"Balin"];
    
    subtitle_array = [[NSMutableArray alloc] init];
    [subtitle_array addObject:@"The Ringbearer"];
    [subtitle_array addObject:@"Taters? Potatoes?"];
    [subtitle_array addObject:@"They come in pints?"];
    [subtitle_array addObject:@"You\'re part of this world!"];
    [subtitle_array addObject:@"What\'s in my pocket?"];
    [subtitle_array addObject:@"Dwarf"];
    [subtitle_array addObject:@"Other Dwarf"];
    [subtitle_array addObject:@"Dwarf Again"];
    [subtitle_array addObject:@"Still a dwarf"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return hobbits_and_dwarves_array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_id"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell_id"];
    }
    
    cell.textLabel.text = hobbits_and_dwarves_array[indexPath.row];
    cell.textLabel.textColor = [UIColor blueColor];
    cell.textLabel.font = [UIFont fontWithName:@"Papyrus" size:22];
    
    cell.detailTextLabel.text = subtitle_array[indexPath.row];
    
    cell.detailTextLabel.textColor = [UIColor redColor];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Arial" size:15];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
