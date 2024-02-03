//
//  DateFormatter.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 03.02.2024.
//

import Foundation

func dateToStr(parseDate: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy/HH:mm"
    dateFormatter.locale = Locale(identifier: "ru_RU")
    let date = dateFormatter.string(from: parseDate)
    
    return date
}


func strToDate(parseStr: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy/HH:mm"
    dateFormatter.locale = Locale(identifier: "ru_RU")
    let date = dateFormatter.date(from: parseStr)
    
    return date
}
