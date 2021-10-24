//
//  PaymentsListView.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct PaymentsListView: View {
    let header: String
    let button: String
    let payments: [Payment]
    
    var headerView: some View {
        HStack {
            Text(header)
                .font(.title2 )
                .fontWeight(.bold)
                .padding(.leading, 10)
            Spacer()
            Button(button) {}
                .font(.callout)
                .foregroundColor(.primaryPurple)
                .padding(.trailing)
        }
    }
    
    var body: some View {
        VStack(spacing: -10) {
            headerView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: -10) {
                    ForEach(payments.indices, id: \.self) { index in
                        PaymentView(payment: payments[index])
                    }
                }
            }
        }
    }
}

struct PaymentsListView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentsListView(header: "Transfers", button: "More", payments: Wallet().transfers)
    }
}
