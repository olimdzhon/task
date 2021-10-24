//
//  taskApp.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

@main
struct taskApp: App {
    @StateObject private var wallet = Wallet()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(wallet)
        }
    }
}

final class Wallet: ObservableObject {
    @Published var cards = cardsData
    @Published var balances = balanceData
    @Published var colors = colorsData
    @Published var transfers = transferData
    @Published var payments = paymentData
    @Published var actions = actionData
    
    var selectedCard: Card {
        cards.first(where: { $0.isSelected })!
    }
}
