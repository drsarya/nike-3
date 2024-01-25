//
//  ShopView.swift
//  nike3
//
//  Created by darya on 24.01.2024.
//  Copyright © 2024 darya. All rights reserved.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack( spacing: 30) {
                    Text("Shoes")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                    Text("Socks")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                    Text("Accessories & Equipment")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                }
            }.padding(.vertical, 20)
            Text("Must-Haves, Best Sellers & More ")
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
