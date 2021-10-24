//
//  HorizontalProgressView.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct HorizontalProgressView: View {
    @Binding var percentage: Int
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.primaryYellow)
                    .frame(height: 20)
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.primaryPurple)
                    .frame(
                        width: proxy.size.width * CGFloat(percentage) / 100,
                        height: 20)
            }
        }
    }
}

struct HorizontalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalProgressView(percentage: .constant(50))
    }
}
