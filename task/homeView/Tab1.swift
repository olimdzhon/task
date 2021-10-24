//
//  Tab1.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct Tab1: View {
    @State private var isPresented = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 35) {
                HeaderView()
                CardListView()
                BalanceView()
                    .padding(.leading)
                    .padding(.trailing)
                    .background(
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 8))
                    .onTapGesture {
                        self.isPresented.toggle()
                    }
                    .fullScreenCover(isPresented: $isPresented, content: BalanceDetailsView.init)
                TransferMoney()
                Spacer()
            }.padding(25)
        }
    }
}

struct Tab1_Previews: PreviewProvider {
    static var previews: some View {
        Tab1()
            .environmentObject(Wallet())
    }
}
