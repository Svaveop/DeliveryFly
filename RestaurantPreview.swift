//
//  RestaurantPreview.swift
//  deliver fly
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct RestaurantPreview: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            headerImage
            restaurantName
            menuItems
            details
        }
    }
    
    let image: ImageResource
    let name: String
    let items: String
    let rating: Double
    let time: Int
    
    var headerImage: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(height: 140)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    var restaurantName: some View {
        Text(name)
            .font(.title2)
            .foregroundStyle(.darkBlue)
    }
    var menuItems: some View{
        Text(items)
    }
    var details: some View {
            HStack {
                Image(.star)
                    .renderingMode(.template)
                    .foregroundStyle(.darkOrange)
                Text(String(rating))
                    .bold()
                    .foregroundStyle(.darkBlue)
                Image(.truck)
                    .renderingMode(.template)
                    .foregroundStyle(.darkOrange)
                    .padding(.leading)
                Text("Free")
                    .fontWeight(.bold)
                    .foregroundStyle(.darkBlue)
                Image(.clock)
                    .renderingMode(.template)
                    .foregroundStyle(.darkOrange)
                    .padding(.leading)
                Text("\(time) min")
                    .fontWeight(.bold)
                    .foregroundStyle(.darkBlue)
            }
            .padding(.vertical)
        }
}

#Preview {
    RestaurantPreview (image: .inNOut, name: "In-n-out Burger", items: "Double Double - Chocolate Shake - French Fries", rating: 5.0, time: 20)
}
