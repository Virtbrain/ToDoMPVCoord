//
//  DatesView.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 04.02.2024.
//

import UIKit

class OpenDateView: UIView {
    
    var openDate: CustomLabel
    let label = CustomLabel(text: "Дата открытия: ", fontSize: 12, fontColor: .black)
    
    init(frame: CGRect, date: String) {
        self.openDate = CustomLabel(text: date, fontSize: 12, fontColor: .blue)
        
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubviews(label, openDate)
        openDate.translatesAutoresizingMaskIntoConstraints = false
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1.0
        
        NSLayoutConstraint.activate([
            //Label
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 150),
            
            //OpenDate
            openDate.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            openDate.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10),
            openDate.widthAnchor.constraint(equalToConstant: 150)
        ])
        
    }

}
