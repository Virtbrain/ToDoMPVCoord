//
//  CustomLabel.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 02.02.2024.
//

import UIKit

//MARK: - CustomLabel
class CustomLabel: UILabel {
    
    //MARK: - Initializers
    init(text: String, fontSize: CGFloat = 20, fontColor: UIColor = .black) {
        super.init(frame: .zero)
        setupLabel(text: text, fontSize: fontSize, fontColor: fontColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupLabel(text: String, fontSize: CGFloat, fontColor: UIColor) {
        self.text = text
        self.textAlignment = .center
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.textColor = fontColor
        translatesAutoresizingMaskIntoConstraints = false
        font = .boldSystemFont(ofSize: fontSize)
    }
    
}
