//
//  LoginView.swift
//  nike_app
//
//  Created by darya on 27.12.2023.
//  Copyright © 2023 darya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack  {
            BackgroundImage()
            ImageGradient()
            VStack ( spacing: 5){
                AppIcon()
                AppText()
                HStack {
                    ActionButton(text: "Join Us")
                    ActionButton(text: "Sign in")
                }
                .padding(.top, 40)
            }.padding(.top, 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundImage: View {
    var body: some View {
        Image("screen2.2")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fill)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ActionButton: View {
    var text: String
    var body: some View {
        Button(action: {}) {
            Text(text)
                .fontWeight(.heavy)
                .frame(maxWidth: 150)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth:2))
                .foregroundColor(.white)
        }
    }
}

struct AppText: View {
    var body: some View {
        Text("Nike App\nBringing Nike the best products, inspiration and stories in sport.")
            .foregroundColor(.white)
            .font(.largeTitle)
            .bold()
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct ImageGradient: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
    }
}

struct AppIcon: View {
    var body: some View {
        Image("screen2.1")
            .frame(width: 400, height: 132, alignment: .leading)
    }
}
