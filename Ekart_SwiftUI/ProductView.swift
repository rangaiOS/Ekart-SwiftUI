//
//  ProductView.swift
//  Ekart_SwiftUI
//
//  Created by Chenna Ranganadha on 31/08/25.
//

import SwiftUI

struct ProductView: View {
    var viewModel = ProductViewModel()
    
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(Array(viewModel.products.enumerated()), id: \.element.id) { index, product in
                    NavigationLink {
                        ProductDetailsView(products: viewModel.products, index: index)
                    } label: {
                        ProductItemView(product: product)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Products")
        }
        
        .task {
            await viewModel.fetchProducts()
        }
        
        
    }
}

#Preview {
    ProductView()
}
