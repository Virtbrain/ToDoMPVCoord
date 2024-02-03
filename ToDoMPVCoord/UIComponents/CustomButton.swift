//
//  CustomButton.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 02.02.2024.
//

import UIKit

//MARK: - CustomButton
class CustomButton: UIButton {
    //MARK: - Initializers
    init(bgColor: UIColor, titleColor: UIColor = UIColor.black, text: String) {
        super.init(frame: .zero)
        backgroundColor = bgColor
        setTitle(text, for: .normal)
        setupButton(titleColor: titleColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupButton(titleColor: UIColor) {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 20
        layer.shadowColor = UIColor(named: "black")?.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 10, height: 5)
        setTitleColor(titleColor, for: .normal)
        setTitleColor(UIColor.init(white: 1, alpha: 0.3), for: .highlighted)
    }
    
}

