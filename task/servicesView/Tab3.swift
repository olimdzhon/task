//
//  Tab3.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct Tab3: View {
    
    var headerView: some View {
        HStack {
            Text("Services")
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
            GridLayout()
        }
    }
}

struct Tab3_Previews: PreviewProvider {
    static var previews: some View {
        Tab3()
    }
}
