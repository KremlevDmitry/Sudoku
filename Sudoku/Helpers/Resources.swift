//
//  Resources.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 06.08.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static let field = UIColor.black
        static let block = UIColor.gray
        enum Cell {
            enum Background {
                static let selected = UIColor.cyan
                static let active = UIColor.lightGray
                static let inactive = UIColor.white
            }
            enum Text {
                static let knownByDefault = UIColor.black
                static let knownByUser = UIColor.blue
            }
        }
    }
    enum Field {
        static let horizontalBlocksNumber = 3
        static let verticalBlocksNumber = 3
        static let blocksNumber = horizontalBlocksNumber * verticalBlocksNumber
        
        static let height = verticalBlocksNumber * Block.height
        static let width = horizontalBlocksNumber * Block.width
        
        enum Block {
            static let height = 3
            static let width = 3
            
            static let borderWidth = 0.0
            static let spacingWidth = 2.0
        }
        
        static let borderWidth = 3.0
        static let spacingWidth = 3.0
    }
}
