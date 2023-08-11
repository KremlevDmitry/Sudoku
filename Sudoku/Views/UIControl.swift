//
//  UIControl.swift
//  Sudoku
//
//  Created by Дмитрий Кремлев on 06.08.2023.
//

import UIKit

class UIControl: UIStackView {
    
    
    private lazy var buttons: [UIControlButton] = {
        var buttons: [UIControlButton] = []
        for _ in 0..<9 { buttons.append(UIControlButton()) }
        for button in buttons {
            button.backgroundColor = UIColor(red: Double.random(in: 0.0 ... 1.0), green: Double.random(in: 0.0 ... 1.0), blue: Double.random(in: 0.0 ... 1.0), alpha: 1.0)
        }
        
        return buttons
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        axis = .horizontal
        distribution = .equalCentering
        
        for button in buttons {
            addArrangedSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                button.centerYAnchor.constraint(equalTo: centerYAnchor),
                button.widthAnchor.constraint(equalToConstant: 40),
                button.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
    }
}
