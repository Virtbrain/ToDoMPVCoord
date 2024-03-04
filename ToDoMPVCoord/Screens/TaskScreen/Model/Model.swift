//
//  Model.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import Foundation

struct Task {
    var title: String
    var description: String?
    var state: TaskStates
    var priority: TaskPriorities
    let openDate: Date
    let closeDate: Date?
    var id: Int {
        openDate.hashValue
    }
}
