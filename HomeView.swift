//
//  HomeView.swift
//  deliver fly
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    historyButton
                    deliveryAddres
                    Spacer()
            }
            restaurants
            restaurantsList
            }
        }
        .padding()
    }
    
    var historyButton: some View {
        Button(action: {
            //action - go to history
        }, label: {
            Image(.history)
                .padding()
                .background(.lightGray)
                .clipShape(Circle())
        })
    }
    var deliveryAddres: some View{
        VStack(alignment: .leading){
            Text("Deliver to")
                .font(.caption)
                .bold()
                .foregroundStyle(.darkOrange)
            Text("9 Amiryan St. Yerevan")
                .font(.footnote)
                .foregroundStyle(.darkGray)
        }
        .padding()
    }
    var restaurants: some View{
        Text("Restaurants")
            .font(.title3)
            .padding(.vertical)
        
    }
    var restaurantsList: some View{
        VStack{
            RestaurantPreview(image: .inNOut, name: "In-n-out Burger", items: "Double Double - Choco Shake - French Fries", rating: 5.0, time: 20)
            RestaurantPreview(image: .fiveGuys, name: "Five Guys", items: "Cheeseburger - Fries - Milkshake - Sandwich", rating: 4.7, time: 35)
            RestaurantPreview(image: .subway, name: "Subway", items: "Wrap - Footlong - Salad - Cookie", rating: 4.5, time: 25)
        }
    }
}

#Preview {
    HomeView()
}
