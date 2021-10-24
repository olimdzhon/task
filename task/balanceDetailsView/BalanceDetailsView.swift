//
//  BalanceDetailsView.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct BalanceDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isOpened = false
    @EnvironmentObject var wallet: Wallet
    @State private var incomePercentage = 0
    
    var headerView: some View {
        VStack{
            ZStack {
                HStack {
                    Button("Close") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .font(.callout)
                    .foregroundColor(.primaryPurple)
                    Spacer()
                }
                Text("Details")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            HStack {
                Text("Balance")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Text("$\(wallet.selectedCard.balance)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.primaryPurple)
                Button(action: {
                    withAnimation {
                        self.isOpened.toggle()
                    }
                }){
                    if isOpened {
                        Image(systemName: "chevron.up")
                            .colorMultiply(.primaryPurple)
                    } else {
                        Image(systemName: "chevron.down")
                            .colorMultiply(.primaryPurple)
                    }
                }
            }
        }
    }
    
    var progressView: some View {
        ZStack {
            HorizontalProgressView(percentage: $incomePercentage)
        }.frame(height: 20)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            headerView
            progressView
                .padding(.top, 20)
                .padding(.bottom, 20)
            BalanceListView()
                .padding(.bottom, 20)
        }
        .padding(.top, 15)
        .padding(.leading, 15)
        .padding(.trailing, 15)
        .onAppear {
            setData()
        }
    }
    
    private func setData() {
        incomePercentage = wallet.selectedCard.incomePercentage
    }
    
    struct BalanceDetailsView_Previews: PreviewProvider {
        static var previews: some View {
            BalanceDetailsView()
                .environmentObject(Wallet())
        }
    }
}
