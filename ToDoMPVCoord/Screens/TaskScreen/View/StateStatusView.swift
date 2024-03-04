//
//  StateStatusView.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 29.02.2024.
//

import UIKit

class StateStatusView: UIView {

    var presenter: SingleTaskPresenterProtocol?
    
    let stateStatus = CustomLabel(text: "Открыта")
    
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
        
        addSubview(stateStatus)
        NSLayoutConstraint.activate([
            stateStatus.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stateStatus.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            stateStatus.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10),
            stateStatus.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
}
