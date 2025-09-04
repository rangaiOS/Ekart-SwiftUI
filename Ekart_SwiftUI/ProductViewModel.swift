//
//  ProductViewModel.swift
//  Ekart_SwiftUI
//
//  Created by Chenna Ranganadha on 31/08/25.
//

import Foundation

@Observable class ProductViewModel {
    var products: [Product] = []
    
    private let apiManager = APIManager()
    
    
    func fetchProducts() async{
        do {
            products = try await apiManager.request(url: "https://fakestoreapi.com/products")
            print(products)

        } catch {
            
        }
    }
}
