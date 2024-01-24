//
//  ProductCard.swift
//  nike3
//
//  Created by darya on 23.01.2024.
//  Copyright © 2024 darya. All rights reserved.
//

import SwiftUI


struct ProductData: Hashable {
    let id = UUID()
    let image: String
    let name: String
    let description: String
    let colors: String
    let price: String
    let isSoldOut: Bool
}


struct ProductCard: View {
    
    
    
    var body: some View {
        var images:[[ProductData]] = []
        _ = [
            ProductData(image: "screen2.2", name: "Critter", description: "Men Fleece Pullover", colors: "6 Colours", price: "US$60", isSoldOut: true),
            ProductData(image: "screen2.2", name: "Critter", description: "Men Fleece Pullover", colors: "6 Colours", price: "US$60", isSoldOut: false),
            ProductData(image: "screen2.2", name: "Critter", description: "Men Fleece Pullover", colors: "6 Colours", price: "US$60", isSoldOut: false),
            ProductData(image: "screen2.2", name: "Critter", description: "Men Fleece Pullover", colors: "6 Colours", price: "US$60", isSoldOut: true),
            ProductData(image: "screen2.2", name: "Critter", description: "Men Fleece Pullover", colors: "6 Colours", price: "US$60", isSoldOut: true),
            ].publisher.collect(2).collect().sink(receiveValue: {images = $0})
        
        return  ScrollView(.vertical) {
            ScrollView(.horizontal) {
                HStack {
                    Text("First Row")
                    Text("Second Row")
                    Text("Third Row")
                }
            }
            ForEach(0..<images.count, id: \.self) { array in
                HStack{
                    ForEach(images[array], id: \.self) {                 value in ProductCardView(imageData: value)
                    }
                }
            }
        }
    }
}




struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard()
    }
}

struct ProductCardView: View {
    var imageData: ProductData;
    var body: some View {
        VStack() {
            ZStack {
                Image(imageData.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 178, height:185)
                    .clipped()
                    .padding(.bottom, 10)
                LikeButton()
                    .frame(maxWidth: 170, maxHeight:178 , alignment: .topTrailing)
            }
            
            if(imageData.isSoldOut){
                Text("Sold Out")
                    .font(Font.custom("Inter", size: 14).weight(.semibold))
                    .foregroundColor(Color(red: 0.937, green: 0.475, blue: 0.322))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            Text(imageData.name)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(imageData.description)
                .foregroundColor(Color(red: 0.384, green: 0.361, blue: 0.361))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(imageData.colors)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(imageData.price)
                .font(Font.custom("Inter", size: 14).weight(.bold))
                .frame(maxWidth: .infinity, alignment: .leading)
        }.frame(width: 180, height: 310, alignment: .topLeading)
        
    }
}

struct LikeButton: View {
    
    var body: some View {
        Button (action: {}) {
            ZStack {
                Ellipse()
                    .foregroundColor(.white)
                    .frame(width: 28, height: 28)
                Image("like")
                    .foregroundColor(.black)
            }
        }
    }
}

