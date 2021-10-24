//
//  BigGridItem.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct BigGridItem: View {
    let firstText: String
    let secondText: String
    let percent: String
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
                HStack{
                    Text(secondText)
                        .font(.footnote)
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                HStack{
                    Text(percent)
                        .font(.footnote)
                        .padding(5)
                        .background(
                            Capsule()
                                .fill(
                                    Color.yellow)
                        )
                    Spacer()
                }
            }
        }
        .padding(10)
        .frame(width: 170, height: 210)
        .background(color)
        .cornerRadius(10)
    }
}

struct BigGridItem_Previews: PreviewProvider {
    static var previews: some View {
        BigGridItem(firstText: "Poster", secondText: "Cinema, concerts, theaters and sport", percent: "until 30%", color: Color.green)
    }
}
