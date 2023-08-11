//
//  SudokuCell.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 05.08.2023.
//

import UIKit

class SudokuCell: UIButton {
    
    var block: SudokuBlock?
    var position: (x: Int, y: Int)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        setTitleColor(.black, for: .normal)
        setTitle("", for: .normal)
        addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    @objc func click() {
        block?.click(cell: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
