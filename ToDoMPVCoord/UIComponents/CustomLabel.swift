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
    init(text: String) {
        super.init(frame: .zero)
        setupLabel(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupLabel(text: String) {
        font = .boldSystemFont(ofSize: 20)
        self.text = text
        self.textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
