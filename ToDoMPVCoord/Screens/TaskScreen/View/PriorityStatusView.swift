//
//  PriorityStatusVIew.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 29.02.2024.
//

import UIKit

class PriorityStatusView: UIView {

    var presenter: SingleTaskPresenterProtocol?
    
    let priorityStatus = CustomLabel(text: "Важное")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        layer.cornerRadius = 20
        layer.borderWidth = 3.0
        backgroundColor = .cyan
        layer.borderColor = UIColor.black.cgColor
        //        self.clipsToBounds = true
        
        addSubview(priorityStatus)
        NSLayoutConstraint.activate([
            priorityStatus.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            priorityStatus.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            priorityStatus.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10),
            priorityStatus.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }

}
