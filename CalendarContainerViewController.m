//
//  CalendarContainerViewController
//  Affirmations
//
//  Created by Hughes, Nate on 12/16/14.
//  Copyright (c) 2014 Hughes, Nate. All rights reserved.
//

#import "CalendarContainerViewController.h"

@interface CalendarContainerViewController ()

@property (weak, nonatomic) IBOutlet UIView *CalendarSwitch;

@end

@implementation CalendarContainerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)calendarViewToggled:(id)sender {
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if( selectedSegment == 0) {
        //calendar
        
    } else {
        //events
        
    }
}

@end