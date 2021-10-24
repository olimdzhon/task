//
//  BalanceView.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var wallet: Wallet
    @State private var incomePercentage = 0
    
    var headerView: some View {
        HStack {
            Text("Balance")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("$\(wallet.selectedCard.balance)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.primaryPurple)
                .padding(.trailing)
            
        }
    }
    
    var incomeView: some View {
        HStack(spacing: 10) {
            Image(systemName: "arrow.down")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.primaryPurple)
                .padding(10)
                .background(Color.primaryPurple
                                .opacity(0.2)
                                .cornerRadius(10))
            VStack(alignment: .leading) {
                Text("In")
                    .font(.headline)
                    .foregroundColor(Color(.systemGray3))
                Text("$\(wallet.selectedCard.income)")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
    }
    
    var exponsesView: some View {
        HStack(spacing: 10) {
            Image(systemName: "arrow.up")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.primaryYellow)
                .padding(10)
                .background(Color.primaryYellow
                                .opacity(0.2)
                                .cornerRadius(10))
            VStack(alignment: .leading) {
                Text("Out")
                    .font(.headline)
                    .foregroundColor(Color(.systemGray3))
                Text("$\(wallet.selectedCard.expenses)")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 15) {
            headerView
            HorizontalProgressView(percentage: $incomePercentage)
                .padding(.bottom, 15)
            HStack {
                incomeView
                Spacer()
                exponsesView
            }
            Spacer()
        }
        .onAppear() {
            update()
        }
        .onChange(of: wallet.selectedCard) { _ in
            update()
        }
    }
    
    private func update() {
        withAnimation(.spring(response: 2)) {
            incomePercentage = wallet.selectedCard.incomePercentage
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .environmentObject(Wallet())
            .fixedSize(horizontal: false, vertical: true)
            .padding()
    }
}
