//
//  AsyncImageView.swift
//  Ekart_SwiftUI
//
//  Created by Chenna Ranganadha on 31/08/25.
//

import SwiftUI

struct AsyncImageView: View {
    let imgUrl: String
    
    
    var body: some View {
        if let url = URL(string: imgUrl) {
            AsyncImage(url: url) { img in
                img.resizable()
            } placeholder: {
                ProductView()
            }
        } else {
            ProductView()
        }
    }
}

#Preview {
    AsyncImageView(imgUrl: Product.dummy.image)
}
