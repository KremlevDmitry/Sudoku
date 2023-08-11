//
//  SudokuBlock.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 05.08.2023.
//

import UIKit

class SudokuBlock: UIGrid<SudokuCell> {
    
    var field: SudokuField?
    var position: (x: Int, y: Int)?
    
    init() {    
        super.init(
            height: Resources.Field.Block.height,
            width: Resources.Field.Block.width,
            border: Resources.Field.Block.borderWidth,
            spacing: Resources.Field.Block.spacingWidth)
        
        backgroundColor = Resources.Colors.block
        
        for index in elements.indices {
            let cell = elements[index]
            cell.block = self
            
            let width = Resources.Field.Block.width
            cell.position = (index % width, index / width)
        }
    }
    
    func click(cell: SudokuCell) {
        field?.click(cell: cell, block: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
