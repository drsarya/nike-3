//
//  LoginView.swift
//  nike_app
//
//  Created by darya on 27.12.2023.
//  Copyright © 2023 darya. All rights reserved.
//

import SwiftUI

struct Screen2: View {
    
    
    var body: some View {
//         TabView {
//             Text("First")
//             Text("Second")
//             Text("Third")
//             Text("Fourth")
//         }
         //.tabViewStyle(.page)
        
        ZStack  {
            Screen2BackgroundImage()
            Screen2ImageGradient()
            VStack ( spacing: 5){

                Screen2AppText()
                HStack {
                    Screen2ActionButton(text: "Get started")
                }
                .padding(.top, 40)
            }.padding(.top, 300)
        }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Screen2BackgroundImage: View {
    var body: some View {
        Image("screen2.2")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fill)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Screen2ActionButton: View {
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

struct Screen2AppText: View {
    var body: some View {
            Text("To personalize your\nexperience and \nconnect you to sport, we've got a few \nquestions for you.")
            .foregroundColor(.white)
            .font(.largeTitle)
            .bold()
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct Screen2ImageGradient: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
    }
}


