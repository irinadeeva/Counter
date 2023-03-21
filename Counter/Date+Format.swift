//
//  File.swift
//  Counter
//
//  Created by Irina Deeva on 21/03/23.
//

import Foundation

extension Date {
    public func dateToString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return formatter.string(from: self)
    }
    
}
