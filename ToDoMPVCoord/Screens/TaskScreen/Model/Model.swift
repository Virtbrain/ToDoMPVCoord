//
//  Model.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import Foundation

struct Task {
    var title: String
    var state: TaskStates
    var priority: TaskPriority
    let openDate: Date
    let closeDate: Date?
}
