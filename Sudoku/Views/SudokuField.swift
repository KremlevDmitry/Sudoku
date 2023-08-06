//
//  SudokuField.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 05.08.2023.
//

import UIKit

class SudokuField: UIGrid<SudokuBlock> {

    var blocks: [SudokuBlock] = []
    
    init() {
        super.init(
            height: Resources.Field.verticalBlocksNumber,
            width: Resources.Field.horizontalBlocksNumber,
            border: Resources.Field.borderWidth,
            spacing: Resources.Field.spacingWidth)
        
        backgroundColor = Resources.Colors.field
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
