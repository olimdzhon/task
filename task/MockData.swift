//
//  MockData.swift
//  task2
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

let cardsData: [Card] = [
    .init(income: 2548, expenses: 748, cardNumber: "**** 2561", imageName: "visa", isSelected: true),
    .init(income: 1234, expenses: 344, cardNumber: "**** 4355", imageName: "mastercard"),
    .init(income: 4433, expenses: 122, cardNumber: "**** 3455", imageName: "american-express")
]

let balanceData: [Balance] = [
    .init(date: "21 october", imageName: "cart.fill", name: "Magazin Dobrocen", cost: "-283,10", paymentType: "Supermarkets", cardType: "Debit card"),
    .init(date: "15 october", imageName: "cart.fill", name: "OOO Vinnyj Grad", cost: "-29,90", paymentType: "Supermarkets", cardType: "Debit card"),
    .init(date: "15 october", imageName: "cart.fill", name: "Fix price", cost: "-694", paymentType: "Supermarkets", cardType: "Debit card"),
    .init(date: "11 october", imageName: "cart.fill", name: "Pyatyorochka", cost: "-348,72", paymentType: "Supermarkets", cardType: "Debit card"),
    .init(date: "9 october", imageName: "cart.fill", name: "Magnit", cost: "-18,99", paymentType: "Supermarkets", cardType: "Debit card")
]

let transferData: [Payment] = [
    .init(imageName: "creditcard.fill", name: "By card number"),
    .init(imageName: "arrowshape.zigzag.right.fill", name: "Between accounts"),
    .init(imageName: "dollarsign.circle.fill", name: "On requesites \n"),
    .init(imageName: "doc.text.fill", name: "By contract number"),
    .init(imageName: "wave.3.right.circle.fill", name: "Transfers nearby"),
    .init(imageName: "network", name: "SWIFT-transfers")
]

let paymentData: [Payment] = [
    .init(imageName: "iphone", name: "Сonnection \n"),
    .init(imageName: "house.fill", name: "Utilities \n"),
    .init(imageName: "wifi", name: "Internet \n"),
    .init(imageName: "triangle", name: "Network marketing"),
    .init(imageName: "phone.fill", name: "Home phone \n"),
    .init(imageName: "tv", name: "Television \n"),
    .init(imageName: "bus.fill", name: "Transport \n"),
    .init(imageName: "banknote.fill", name: "E-wallet \n"),
    .init(imageName: "creditcard", name: "Repayment of loans"),
    .init(imageName: "gamecontroller.fill", name: "Games \n"),
    .init(imageName: "graduationcap.fill", name: "Education \n"),
    .init(imageName: "airplane", name: "Travel \n"),
    .init(imageName: "message.fill", name: "Social media \n"),
    .init(imageName: "cart", name: "Online stores \n"),
    .init(imageName: "cross.fill", name: "Charity \n"),
    .init(imageName: "ellipsis", name: "More \n"),
]

let actionData: [Payment] = [
    .init(imageName: "qrcode", name: "Pay by QR \n"),
    .init(imageName: "banknote", name: "Withdraw cash"),
    .init(imageName: "arrowshape.turn.up.left.fill", name: "Request money"),
    .init(imageName: "dollarsign.circle", name: "Transfer cash to me")
]

let colorsData: [Color] = [
    Color.orange, Color.red, Color.pink, Color.purple, Color.yellow, Color.green, Color.primary, Color.primaryPurple, Color.primaryYellow, Color.blue
]
