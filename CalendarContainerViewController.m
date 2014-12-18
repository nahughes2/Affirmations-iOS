//
//  CalendarContainerViewController
//  Affirmations
//
//  Created by Hughes, Nate on 12/16/14.
//  Copyright (c) 2014 Hughes, Nate. All rights reserved.
//

#import "CalendarContainerViewController.h"
#import "SwappingViewViewController.h"

@interface CalendarContainerViewController ()

@property (weak, nonatomic) IBOutlet UIView *CalendarSwitch;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) SwappingViewViewController *swappingViewController;

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
        [self.swappingViewController swapViewControllers: 0];
    } else {
        //events
        [self.swappingViewController swapViewControllers: 1];
    }
}

//get a reference to the child/container view controller
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"embedSwappingViewController"]) {
        self.swappingViewController = segue.destinationViewController;
    }
}

@end