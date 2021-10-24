//
//  PaymentView.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct BalanceItemView: View {
    let balance: Balance
    let color: Color
    var headerView: some View {
        HStack {
            Text(balance.date)
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
                Image(systemName: balance.imageName)
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(
                        Circle()
                            .fill(color)
                    )
                VStack{
                    HStack{
                        Text(balance.name)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(balance.cost)
                    }
                    HStack{
                        Text(balance.paymentType)
                            .kerning(1.0)
                            .font(.callout)
                            .foregroundColor(.gray)
                        Spacer()
                        Text(balance.cardType)
                            .kerning(1.0)
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct BalanceItemView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceListView().environmentObject(Wallet())
    }
}
