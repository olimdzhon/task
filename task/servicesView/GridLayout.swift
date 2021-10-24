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
                    BigGridItem(firstText: "Poster", secondText: "Cinema, concerts, theaters and sport", percent: " until 30% ", color: Color.firstGrid)
                    VStack {
                        SmallGridItem(firstText: "Fuel", percent: " 1,5% ", color: Color.secondGrid)
                        SmallGridItem(firstText: "Restaurants", percent: " 10% ", color: Color.thirdGrid)
                    }
                }
                HStack {
                    VStack {
                        SmallGridItem(firstText: "Goods", percent: " until 25% ", color: Color.fourthGrid)
                        SmallGridItem(firstText: "Services", percent: " until 30% ", color: Color.fifthGrid)
                    }
                    BigGridItem(firstText: "Travels", secondText: "Flights, hotels, tours", percent: " until 10% ", color: Color.sixthGrid)
                }
                HStack {
                    SmallGridItem(firstText: "Cashback", percent: nil, color: Color.seventhGrid)
                    SmallGridItem(firstText: "My car", percent: nil, color: Color.eighthGrid)
                }
                Text("All Services")
                    .frame(width: 340, height: 50)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10
                        )
                        .fill(Color.gray.opacity(0.1))
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
