//
//  SingleTaskPresenter.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 02.02.2024.
//

import Foundation

protocol SingleTaskPresenterProtocol {
    func getTaskParams() -> String
}

class SingleTaskPresenter: SingleTaskPresenterProtocol {
    
    func getTaskParams() -> String {
        return "This is function getTaskParams"
    }
}
