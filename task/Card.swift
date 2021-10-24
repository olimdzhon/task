//
//  Card.swift
//  task2
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct Card: Hashable {
    let income: Int
    let expenses: Int
    var balance: Int {
        income - expenses
    }
    let cardNumber: String
    let imageName: String
    var isSelected = false
    var backgroundColor: Color {
        isSelected ? .primaryPurple : .primaryYellow
    }
    var textColor: Color {
        isSelected ? .white : .black
    }
    var incomePercentage: Int {
        Int(Double(balance) / Double(income) * 100)
    }
}
