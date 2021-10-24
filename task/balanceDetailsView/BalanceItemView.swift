//
//  PaymentView.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct BalanceView: View {
    let balace: Balance
    let color: Color
    var headerView: some View {
        HStack {
            Text(payment.date)
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
        }
    }
    
    var body: some View {
        VStack {
            headerView
                .padding(.top,10)
                .padding(.bottom,10)
            HStack(spacing: 10) {
                Image(systemName: payment.imageName)
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(
                        Circle()
                            .fill(color)
                    )
                VStack{
                    HStack{
                        Text(payment.name)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(payment.cost)
                    }
                    HStack{
                        Text(payment.paymentType)
                            .kerning(1.0)
                            .font(.callout)
                            .foregroundColor(.gray)
                        Spacer()
                        Text(payment.cardType)
                            .kerning(1.0)
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentListView().environmentObject(Wallet())
    }
}
