//
//  LoginView.swift
//  nike_app
//
//  Created by darya on 27.12.2023.
//  Copyright © 2023 darya. All rights reserved.
//

import SwiftUI

struct Screen2: View {
    let valueLoading: CGFloat = 20
    
    var body: some View {
        
        ZStack  {
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.50)
            

            Screen2BackgroundImage()
            Screen2ImageGradient()
            VStack ( spacing: 5){
                ProgressBar()
                Screen2AppText()
                HStack {
                    Screen2ActionButton(text: "Get started")
                }
                .padding(.top, 550)
            }
            .frame(width: 400, height: 900, alignment: .top)
            .padding(.top, 80)
        }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}

struct Screen2BackgroundImage: View {
    var body: some View {
        ZStack{
            Image("image 9") .offset(x: -120, y: -300)
            Image("image 10") .offset(x: 100, y: 320)
            Image("image 11") .offset(x: 100, y: -120)
            Image("image 12") .offset(x: -120, y: -60)
            Image("image 13") .offset(x: 170, y: 150)
            Image("image 14") .offset(x: 60, y: 150)
            Image("image 15") .offset(x: -120, y: 200)
        }
    }
}

struct Screen2ActionButton: View {
    var text: String
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 25) .foregroundColor(.white)
                    .frame(width: 150, height: 49, alignment: .center)
                Text(text)
                    .fontWeight(.heavy)
                    .frame(maxWidth: 150)
                    .padding()
                    .foregroundColor(Color.black)
            }
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
        VStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .top, endPoint: .bottom))
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .bottom, endPoint: .top))
        }
    }
}



struct ProgressBar: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 167, height: 4)
                .background(Color(red: 0.32, green: 0.31, blue: 0.32))
                .cornerRadius(10)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 58, height: 4)
                .background(Color.white)
                .cornerRadius(10)
                .frame(width: 167, height: 4, alignment: .topLeading)
        }
    }
}
