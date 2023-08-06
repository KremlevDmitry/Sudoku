//
//  ViewController.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 01.08.2023.
//

import UIKit

class GameViewController: UIViewController {

    lazy var layout = view.layoutMarginsGuide
    private let field = SudokuField()
    
    
//    private lazy var grid: UIGrid = {
//        let grid = UIGrid<UIView>(height: 9, width: 9, border: 1.0, spacing: 3.0)
//        grid.backgroundColor = .black
//
//        view.addSubview(grid)
//        grid.translatesAutoresizingMaskIntoConstraints = false
//        return grid
//    }()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        
        view.addSubview(field)
        
//        NSLayoutConstraint.activate([
//            grid.leadingAnchor.constraint(equalTo: layout.leadingAnchor),
//            grid.trailingAnchor.constraint(equalTo: layout.trailingAnchor),
//            grid.centerYAnchor.constraint(equalTo: layout.centerYAnchor),
//            grid.heightAnchor.constraint(equalTo: grid.widthAnchor)
//        ])
        NSLayoutConstraint.activate([
            field.leadingAnchor.constraint(equalTo: layout.leadingAnchor),
            field.trailingAnchor.constraint(equalTo: layout.trailingAnchor),
            field.centerYAnchor.constraint(equalTo: layout.centerYAnchor),
            field.heightAnchor.constraint(equalTo: field.widthAnchor)
        ])
    }


}

