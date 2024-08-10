//
//  Food.swift
//  deliver fly
//
//  Created by user on 6/16/24.
//

import Foundation

struct Food: Hashable, Identifiable {
    let id: String
    let name: String
    let description: String
    let image: String
    //ingredients
    let price: Double
}

#if DEBUG
extension Food {
    static var previewData: Food {
        Food(id: "101",
             name: "Double Double",
             description: "Freshly baked buns, American cheese, two beef patties, fleshly sliced or grilled onions, lettuce, spread, and tomatoes.",
             image: "doubleDouble",
             //ingredients: [.salt, .patty, .onion, .tomato, .pepper, .mayo, .cheese, .ketchup, .lettuce],
             price: 3.95)
    }
}

extension Array where Element == Food {
    static var previewDataArray: [Food] {
        [Food(id: "101",
              name: "Double Double",
              description: "Freshly baked buns, American cheese, two beef patties, fleshly sliced or grilled onions, lettuce, spread, and tomatoes.",
              image: "doubleDouble",
              //ingredients: [.salt, .patty, .onion, .tomato, .pepper, .mayo, .cheese, .ketchup],
              price: 3.95),
         Food(id: "102",
              name: "Chocolate Shake",
              description: "Chocolate, strawberry or vanilla made with real ice cream.",
              image: "inNOutChocolateShake",
              //ingredients: [],
              price: 2.50),
         Food(id: "103",
              name: "French Fries",
              description: "Fresh, hand-cut potatoes prepared in 100% sunflower oil.",
              image: "inNOutFrenchFries",
              //ingredients: [.salt, .onion, .tomato, .pepper, .mayo, .cheese, .ketchup],
              price: 1.85),
         Food(id: "104",
              name: "Animal Style Fries",
              description: "Secret but unique fries, topped with cheese, spread, and grilled onions.",
              image: "animalStyleFries",
              //ingredients: [],
              price: 4.25)]
    }
}
#endif
