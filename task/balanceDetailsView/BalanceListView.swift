//
//  PaymentDetails.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct PaymentListView: View {
    @EnvironmentObject var wallet: Wallet
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                    ForEach(wallet.payments.indices, id: \.self) { index in
                        PaymentView(payment: wallet.payments[index], color: wallet.colors[index])
                    }
                
            }
        }
    }
}

struct PaymentDetails_Previews: PreviewProvider {
    static var previews: some View {
        PaymentListView()
            .environmentObject(Wallet())
    }
}
