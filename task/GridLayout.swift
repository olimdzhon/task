//
//  GridLayout.swift
//  task
//
//  Created by Олимджон Садыков on 24.10.2021.
//

import SwiftUI

struct GridLayout: View {
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HStack {
                    BigGridItem(firstText: "Poster", secondText: "Cinema, concerts, theaters and sport", percent: " until 30% ", color: Color.green)
                    VStack {
                        SmallGridItem(firstText: "Fuel", percent: " 1,5% ", color: Color.blue)
                        SmallGridItem(firstText: "Restaurants", percent: " 10% ", color: Color.blue)
                    }
                }
                HStack {
                    VStack {
                        SmallGridItem(firstText: "Goods", percent: " until 25% ", color: Color.blue)
                        SmallGridItem(firstText: "Services", percent: " until 30% ", color: Color.blue)
                    }
                    BigGridItem(firstText: "Travels", secondText: "Flights, hotels, tours", percent: " until 10% ", color: Color.green)
                }
                HStack {
                    SmallGridItem(firstText: "Cashback", percent: nil, color: Color.blue)
                    SmallGridItem(firstText: "My car", percent: nil, color: Color.blue)
                }
                Text("All Services")
                    .frame(width: 340, height: 50)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10
                        )
                        .fill(Color.blue)
                    )
            }.padding()
        }
    }
}

struct GridLayout_Previews: PreviewProvider {
    static var previews: some View {
        GridLayout()
    }
}
