//
//  History.swift
//  Counter
//
//  Created by Irina Deeva on 29/03/23.
//

import Foundation

class History {
    static let history: History = .init()
    private init() { }
    
    var steps: [String] = []
}
