//
//  ContentView.swift
//  PaolaCard
//
//  Created by Erick Borges on 17/05/21.
//

import SwiftUI

struct ContentView: View {
    let color = Color(red: 0.88, green: 0.37, blue: 0.25, opacity: 1.00)
    
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.80, blue: 0.47, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("selfPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(100)
                    .overlay(Circle().stroke(color, lineWidth: 5))
                Text("Paola Ciarcia")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(color)
                    .lineLimit(nil)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(color: color, text: "+55 (11) 99463-3788", imageName: "phone.fill")
                InfoView(color: color, text: "paolaciarcia20@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


