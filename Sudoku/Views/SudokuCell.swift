//
//  SudokuCell.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 05.08.2023.
//

import UIKit

class SudokuCell: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        setTitleColor(.black, for: .normal)
        setTitle("", for: .normal)
        addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    @objc func click() {
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
