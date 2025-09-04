//
//  ProductItemView.swift
//  Ekart_SwiftUI
//
//  Created by Chenna Ranganadha on 31/08/25.
//

import SwiftUI

struct ProductItemView: View {
    
    let product : Product
    var body: some View {
        
        HStack(spacing: 8) {
            if let url = URL(string: product.image) {
                productImage(url: url)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                //Title
                Text(product.title)
                    .font(.headline)
                    .lineLimit(2)
                
                HStack {
                    //Category
                    Text(product.category)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                    
                    HStack {
                        Image(systemName: "star.fill")
                        Text(product.rating.rate.toString())
                    }
                    .fontWeight(.medium)
                    .foregroundColor(.yellow)
                    
                }
                // Description
                Text(product.description)
                    .lineLimit(3)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                
                // Price & Buy button
                
                HStack {
                    Text(product.price.currencyFormat())
                        .font(.title2)
                        .foregroundColor(.indigo)
                    Spacer()
                    buyButton
                }
                
            }
        }.padding()

    }
    
    var buyButton: some View {
        Button {
            
        } label: {
            Text("Buy")
                .padding(.vertical, 8)
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.indigo)
                .clipShape(.capsule)
                
        }
    }
    
    func productImage(url: URL) -> some View {
        AsyncImage(url: url) { img in
            img.resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }.frame(width: 100, height: 100)
    }
    
}

#Preview {
    ProductItemView(product: Product.dummy)
}
