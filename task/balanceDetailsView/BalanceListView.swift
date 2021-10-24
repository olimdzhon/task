//
//  PaymentDetails.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct BalanceListView: View {
    @EnvironmentObject var wallet: Wallet
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                    ForEach(wallet.balances.indices, id: \.self) { index in
                        BalanceItemView(balance: wallet.balances[index], color: wallet.colors[index])
                    }
                
            }
        }
    }
}

struct BalanceListView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceListView()
            .environmentObject(Wallet())
    }
}
