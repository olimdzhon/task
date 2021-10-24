//
//  PaymentView.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct PaymentView: View {
    let payment: Payment
    var body: some View {
        VStack {
            HStack {
                Image(systemName: payment.imageName)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .background(
                        Circle()
                            .fill(Color.primaryPurple)
                    )
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.top, 5)
            HStack{
                Text("\(payment.name)")
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .font(.footnote)
                    .padding(.top, 5)
                    .padding(.leading, 10)
                Spacer()
            }
            
        }
        .padding(.vertical, 10)
        .cornerRadius(10)
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
                .shadow(radius: 8))
        .frame(width: 120, height: 150)
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentsListView(header: "Transfers", button: "More", payments: Wallet().transfers)
            
    }
}
