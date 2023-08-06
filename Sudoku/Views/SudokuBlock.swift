//
//  SudokuBlock.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 05.08.2023.
//

import UIKit

class SudokuBlock: UIGrid<SudokuCell> {

    var cells: [SudokuCell] = []
    
    init() {
        super.init(
            height: Resources.Field.Block.height,
            width: Resources.Field.Block.width,
            border: Resources.Field.Block.borderWidth,
            spacing: Resources.Field.Block.spacingWidth)
        
        backgroundColor = Resources.Colors.block
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
