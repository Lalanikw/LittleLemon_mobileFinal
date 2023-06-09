//
//  MenuView.swift
//  Mobile_final_Project
//
//  Created by Lalani on 5/17/23.
//

import SwiftUI

struct MenuView: View {
    let name: String
    let description: String
    let price: String
    let imageUrl: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: HorizontalAlignment.leading) {
                Text(name)
                    .font(.system(size: 20))
                    .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                Text(description)
                    .lineLimit(2)
                    .font(.system(size: 16))
                    .foregroundColor(Color.green)
                Text(formatPrice(priceStr: price))
                    .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                    .font(.system(size: 20))
                    .foregroundColor(Color.green)
            }
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))
            Spacer()
            AsyncImage(url: URL(string: imageUrl)) { phase in
                if let image = phase.image {
                    image.resizable()
                } else {
                    // use image placeholder
                    Image("Greek salad").resizable()
                }
            }
            .frame(width: 82, height: 82)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 124)
    }
    
    private func formatPrice(priceStr: String) -> String {
        if let price = Float(priceStr) {
            let spacing = price < 10 ? " " : ""
            return "$ " + spacing + String(format: "%.2f", price)
        } else {
            return ""
        }
    }
}

struct MenuItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(
            name: "Salad",
            description: "Description",
            price: "$99")
    }
}
