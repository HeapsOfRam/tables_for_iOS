//
//  ViewController.m
//  table_learns
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "ViewController.h"
#import "dwarf_detail_view_controller.h"
#import "character.h"

@interface ViewController ()

@property NSMutableArray *hobbits_and_dwarves_array, *subtitle_array, *pictures_array;
@property NSString *subtitle;

@end

@implementation ViewController

@synthesize hobbits_and_dwarves_array, subtitle_array, pictures_array, subtitle;

NSString *dwarf_key;
character *selected_character;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    character *frodo = [[character alloc] init_dwarf_with_name:@"Frodo" and_tagline:@"The Ringbearer" and_blurb:@"On a quest to destroy the one ring of power in the fires of Mt Doom in Mordor" and_image:@"Frodo"];
    character *bilbo = [[character alloc] init_dwarf_with_name:@"Bilbo" and_tagline:@"What\'s in my pocket?" and_blurb:@"Bilbo discovered the ring" and_image:@"Bilbo"];
    character *samwise = [[character alloc] init_dwarf_with_name:@"Samwise" and_tagline:@"Taters? Potatoes?" and_blurb:@"Loyally follows Frodo to the ends of Middle Earth" and_image:@"Samwise"];
    character *pippin = [[character alloc] init_dwarf_with_name:@"Pippin" and_tagline:@"They come in pints?" and_blurb:@"A fun-loving hobbit who is best friends with Merry" and_image:@"Pippin"];
    character *merry = [[character alloc] init_dwarf_with_name:@"Merry" and_tagline:@"But you\'re part of this world!" and_blurb:@"A noble hobbit who has a strong sense of justice. Best friends with Pippin" and_image:@"Merry"];
    
    hobbits_and_dwarves_array = [[NSMutableArray alloc] init];
    
    [hobbits_and_dwarves_array addObject:frodo];
    [hobbits_and_dwarves_array addObject:bilbo];
    [hobbits_and_dwarves_array addObject:samwise];
    [hobbits_and_dwarves_array addObject:pippin];
    [hobbits_and_dwarves_array addObject:merry];
    
    /*
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
    [subtitle_array addObject:@"Still a dwarf"];*/
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return hobbits_and_dwarves_array.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Hobbits and Dwarves";
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return 5;
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_id"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell_id"];
    }
    
    cell.textLabel.text = [hobbits_and_dwarves_array[indexPath.row] name];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.font = [UIFont fontWithName:@"Papyrus" size:22];
    
    cell.detailTextLabel.text = [hobbits_and_dwarves_array[indexPath.row] tagline];
    
    cell.detailTextLabel.textColor = [UIColor redColor];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Arial" size:15];
    
    cell.imageView.image = [UIImage imageNamed:[hobbits_and_dwarves_array[indexPath.row] image_name]];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    if(indexPath.row % 2 == 0){
        cell.backgroundColor = [UIColor lightGrayColor];
    }
    else{
        cell.backgroundColor = [UIColor darkGrayColor];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"User clicked on %@", hobbits_and_dwarves_array[indexPath.row]);
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    selected_character = hobbits_and_dwarves_array[indexPath.row];
    
    return indexPath;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    dwarf_detail_view_controller *dwarf_detail_screen = [segue destinationViewController];
    dwarf_detail_screen.selected_character = selected_character;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
