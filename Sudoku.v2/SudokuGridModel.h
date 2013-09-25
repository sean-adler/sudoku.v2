//
//  SudokuGridModel.h
//  Sudoku.v2
//
//  Created by SDA on 9/13/13.
//  Copyright (c) 2013 Sean Adler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SudokuGridModel : NSObject

@property NSMutableArray *gridNumbers;
@property NSMutableArray *gridNumbersEditable;
@property NSString *selectedTile;
@property int selectedTileIndex;
@property (nonatomic) BOOL tileIsSelected;

@end
