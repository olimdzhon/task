//
//  SmallGridItem.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct SmallGridItem: View {
    let firstText: String
    let percent: String?
    let color: Color
    
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                HStack{
                    Text(firstText)
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                if percent != nil {
                    HStack{
                        Text(percent!)
                            .font(.footnote)
                            .padding(5)
                            .background(
                                Capsule()
                                    .fill(
                                        Color.yellow)
                            )
                        Spacer()
                    }
                    
                } else {
                    
                }
            }
        }
        .padding(10)
        .frame(width: 170, height: 100)
        .background(color)
        .cornerRadius(10)
    }
}

struct SmallGridItem_Previews: PreviewProvider {
    static var previews: some View {
        SmallGridItem(firstText: "Fuel", percent: " 1,5% ", color: Color.blue)
    }
}
