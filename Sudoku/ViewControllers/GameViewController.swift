//
//  ViewController.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 01.08.2023.
//

import UIKit

class GameViewController: UIViewController {

    private lazy var layout = view.layoutMarginsGuide
    private let field = SudokuField()
    private let control = UIControl()
    
    override func loadView() {
        super.loadView()
        
        configure()
    }

    private func configure() {
        view.backgroundColor = .white
        
        view.addSubview(field)
        field.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            field.leadingAnchor.constraint(equalTo: layout.leadingAnchor),
            field.trailingAnchor.constraint(equalTo: layout.trailingAnchor),
            field.centerYAnchor.constraint(equalTo: layout.centerYAnchor),
            field.heightAnchor.constraint(equalTo: field.widthAnchor)
        ])
        
        view.addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            control.leadingAnchor.constraint(equalTo: layout.leadingAnchor),
            control.trailingAnchor.constraint(equalTo: layout.trailingAnchor),
            control.bottomAnchor.constraint(equalTo: layout.bottomAnchor, constant: -50)
        ])
    }
}

