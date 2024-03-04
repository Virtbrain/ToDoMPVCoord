//
//  DatesVStackView.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 29.02.2024.
//

import UIKit

class DatesVStackView: UIStackView {
    
    var openDateView: OpenDateView
    var closeDateView: CloseDateView
    
    init(openDate: String, closeDate: String?) {
        openDateView = OpenDateView(frame: .zero, date: openDate)
        closeDateView = CloseDateView(frame: .zero, date: closeDate)
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        setup(openDate: openDate, closeDate: closeDate)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup(openDate: String, closeDate: String?) {
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.black.cgColor
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1.0
        addArrangedSubview(openDateView)
        addArrangedSubview(closeDateView)
        axis = .vertical
        alignment = .leading
        
        backgroundColor = datesStackBgColor
    }
    
}
