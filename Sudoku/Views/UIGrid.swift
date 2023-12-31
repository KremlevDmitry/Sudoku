//
//  UIGrid.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 06.08.2023.
//

import UIKit

class UIGrid<T:UIView>: UIView {
    
    var elements: [T] = []
    
    private var height = 0
    private var width = 0
    private var border = 0.0
    private var spacing = 0.0
    
    private let mainStack = UIStackView()
    private let stacks: [UIStackView] = []
    
    init(height: Int, width: Int, border: Double, spacing: Double) {
        self.height = height
        self.width = width
        self.border = border
        self.spacing = spacing
        
        super.init(frame: CGRect.zero)
        
        createGrid()
        configure()
    }
    
    override init(frame: CGRect) {
//        super.init(frame: frame)
        fatalError("init(frame:) has not been implemented")
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: topAnchor, constant: border),
            mainStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -border),
            mainStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: border),
            mainStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -border)
        ])
    }
    
    private func createGrid() {
        mainStack.axis = .vertical
        mainStack.distribution = .fillEqually
        mainStack.spacing = spacing
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainStack)
        for _ in 0..<height {
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.spacing = spacing
            stack.distribution = .fillEqually
            for _ in 0..<width {
                let element = T()
                elements.append(element)
                stack.addArrangedSubview(element)
            }
            mainStack.addArrangedSubview(stack)
        }
    }
}
