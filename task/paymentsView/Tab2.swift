//
//  Tab2.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct Tab2: View {
    @EnvironmentObject var wallet: Wallet
    
    var headerView: some View {
        HStack {
            Text("Payments")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
                .padding(.leading, 20)
                .padding(.bottom, 10)
            Spacer()
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            headerView
            ScrollView {
                
                VStack(spacing: 10) {
                    PaymentsListView(header: "Transfers", button: "More", payments: wallet.transfers)
                    PaymentsListView(header: "Payments", button: "More", payments: wallet.payments)
                    PaymentsListView(header: "Actions", button: "", payments: wallet.actions)
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
            }
        }
    }
}

struct Tab2_Previews: PreviewProvider {
    static var previews: some View {
        Tab2()
            .environmentObject(Wallet())
    }
}
