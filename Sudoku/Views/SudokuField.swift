//
//  SudokuField.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 05.08.2023.
//

import UIKit

class SudokuField: UIGrid<SudokuBlock> {

    init() {
        super.init(
            height: Resources.Field.verticalBlocksNumber,
            width: Resources.Field.horizontalBlocksNumber,
            border: Resources.Field.borderWidth,
            spacing: Resources.Field.spacingWidth)
        
        backgroundColor = Resources.Colors.field
        
        for index in elements.indices {
            let block = elements[index]
            block.field = self
            
            let width = Resources.Field.horizontalBlocksNumber
            block.position = (index % width, index / width)
        }
    }
    
    func click(cell: SudokuCell, block: SudokuBlock) {
        print("Block x: \(String(describing: block.position?.x)), y: \(String(describing: block.position?.y))")
        print("Cell x: \(String(describing: cell.position?.x)), y: \(String(describing: cell.position?.y))")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
