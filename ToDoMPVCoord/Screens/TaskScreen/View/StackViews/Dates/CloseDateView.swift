//
//  CloseDateView.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 29.02.2024.
//

import UIKit

class CloseDateView: UIView {
    
    var closeDate: CustomLabel?
    let label = CustomLabel(text: "Дата заыершения: ", fontSize: 12, fontColor: .black)
    
    init(frame: CGRect, date: String?) {
        guard let date = date else {
            super.init(frame: frame)
            return
        }
        closeDate = CustomLabel(text: date, fontSize: 12, fontColor: .blue)
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        backgroundColor = .cyan
        layer.borderColor = UIColor.black.cgColor
        
        guard let closeDate = closeDate else {return}
        addSubviews(label, closeDate)
        NSLayoutConstraint.activate([
            //Label
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 150),
            
            //closeData
            closeDate.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            closeDate.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10),
            closeDate.widthAnchor.constraint(equalToConstant: 150)
        ])
        
    }

}
