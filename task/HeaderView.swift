//
//  HeaderView.swift
//  task2
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good morning")
                    .font(.callout)
                    .foregroundColor(Color(.systemGray3))
                Text("Olimjon Sadykov")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("me")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
