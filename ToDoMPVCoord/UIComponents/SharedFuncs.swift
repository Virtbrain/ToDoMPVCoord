//
//  SharedFuncs.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 04.02.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

