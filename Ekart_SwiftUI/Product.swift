//
//  Product.swift
//  Ekart_SwiftUI
//
//  Created by Chenna Ranganadha on 31/08/25.
//

import Foundation


struct Product: Codable, Identifiable {
    let id: Int
    let title, description, category, image: String
    let price: Double
    let rating: Rate
    
    static var dummy: Product {
        return Product(id: 1, title: "Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket", description: "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5", category: "men\'s clothing", image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png", price: 39.0, rating: Rate(rate: 3.9, count: 3))
    }
}

struct Rate: Codable {
    let rate: Double
    let count: Int
}
