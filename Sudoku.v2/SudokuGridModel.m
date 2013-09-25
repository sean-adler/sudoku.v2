//
//  SudokuGridModel.m
//  Sudoku.v2
//
//  Created by SDA on 9/13/13.
//  Copyright (c) 2013 Sean Adler. All rights reserved.
//

#import "SudokuGridModel.h"

@implementation SudokuGridModel

- (id)init
{
    self = [super init];
    
    if (self) {
        
        self.selectedTile = @"";
        self.selectedTileIndex = -1;
        
        self.tileIsSelected = NO;
        self.gridNumbers = [NSMutableArray arrayWithObjects:
                             @"9", @" ", @" ", @" ", @"8", @"2", @"1", @" ", @"4",
                             @"8", @" ", @" ", @"7", @" ", @" ", @"3", @" ", @"6",
                             @"6", @" ", @"3", @"4", @"9", @" ", @" ", @" ", @"8",
                             @" ", @" ", @"1", @" ", @" ", @" ", @" ", @" ", @"2",
                             @"2", @"6", @"7", @" ", @" ", @"7", @" ", @" ", @"3",
                             @"4", @" ", @" ", @"2", @" ", @" ", @" ", @" ", @"1",
                             @" ", @" ", @" ", @" ", @"5", @"6", @" ", @" ", @" ",
                             @"1", @"5", @" ", @" ", @" ", @" ", @" ", @"7", @" ",
                             @"7", @"3", @"8", @" ", @"2", @"1", @" ", @" ", @"4", nil];
        
        
        
        // Store whether each cell is editable (Contains blank at beginning of game.)
        self.gridNumbersEditable = [NSMutableArray arrayWithCapacity:self.gridNumbers.count];
        
        for (int i = 0; i < self.gridNumbers.count; i++) {
            BOOL indexIsEditable = [self.gridNumbers[i] isEqualToString:@" "];
            [self.gridNumbersEditable addObject:[NSNumber numberWithBool:indexIsEditable]];
        }
    }
    return self;
}

@end
