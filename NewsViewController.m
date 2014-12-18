//
//  NewsViewController
//  Affirmations
//
//  Created by Hughes, Nate on 12/16/14.
//  Copyright (c) 2014 Hughes, Nate. All rights reserved.
//

#import "NewsItem.h"
#import "NewsViewController.h"
#import "NewsCell.h"

#define affirmationsRed [UIColor colorWithRed:228.0f/255.0f green:3.0f/255.0f blue:3.0f/255.0f alpha:1.0]
#define affirmationsOrange [UIColor colorWithRed:255.0f/255.0f green:140.0f/255.0f blue:0.0f/255.0f alpha:1.0]
#define affirmationsYellow [UIColor colorWithRed:255.0f/255.0f green:237.0f/255.0f blue:0.0f/255.0f alpha:1.0]
#define affirmationsGreen [UIColor colorWithRed:0.0f/255.0f green:128.0f/255.0f blue:38.0f/255.0f alpha:1.0]
#define affirmationsBlue [UIColor colorWithRed:0.0f/255.0f green:77.0f/255.0f blue:255.0f/254.0f alpha:1.0]
#define affirmationsViolet [UIColor colorWithRed:117.0f/255.0f green:7.0f/255.0f blue:135.0f/255.0f alpha:1.0]

@interface NewsViewController ()

@property int cellColorCounter;

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.newsItemsArray = [NSMutableArray array];
    //fake data item
    for (int i = 0; i < 12; i++) {
        NewsItem *newNewsItem = [[NewsItem alloc] newsItem:@"Title" linkString:@"http://" descriptionString:@"BLAH" dateString:@"day, month dd, YYYY"];
        [self.newsItemsArray addObject:newNewsItem];
    }
    
    [self.newsTable reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //call indexPath selected
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    // If you're serving data from an array, return the length of the array:
    return [self.newsItemsArray count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"newsCell";
    
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Set the data for this cell:
    NewsItem * tempNewsItem = [self.newsItemsArray objectAtIndex:indexPath.row];
    
    cell.titleLabel.text = tempNewsItem.newsItemTitle;
    cell.contentLabel.text = tempNewsItem.newsItemDescription;
    
    switch (self.cellColorCounter) {
        case 0:
            cell.backgroundColor = affirmationsRed;
            self.cellColorCounter++;
            break;
        case 1:
            cell.backgroundColor = affirmationsOrange;
            self.cellColorCounter++;
            break;
        case 2:
            cell.backgroundColor = affirmationsYellow;
            self.cellColorCounter++;
            break;
        case 3:
            cell.backgroundColor = affirmationsGreen;
            self.cellColorCounter++;
            break;
        case 4:
            cell.backgroundColor = affirmationsBlue;
            self.cellColorCounter++;
            break;
        case 5:
            cell.backgroundColor = affirmationsViolet;
            self.cellColorCounter = 0;
            break;
    }
    return cell;
}

@end
