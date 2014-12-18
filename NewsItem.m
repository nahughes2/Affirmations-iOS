//
//  NewsItem.m
//  Affirmations
//
//  Created by Hughes, Nate on 10/15/14.
//  Copyright (c) 2014 Hughes, Nate. All rights reserved.
//

#import "NewsItem.h"

@implementation NewsItem

-(NewsItem*) newsItem:(NSString *) title
           linkString:(NSString *)link
    descriptionString:(NSString *)description
           dateString:(NSString *)date
{
    self.newsItemTitle = title;
    self.newsItemLink = link;
    self.newsItemDescription = description;
    self.newsItemPubDate = date;
    
    return self;
}

@end
