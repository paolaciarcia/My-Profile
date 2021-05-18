//
//  infoView.swift
//  PaolaCard
//
//  Created by Erick Borges on 17/05/21.
//

import SwiftUI

struct InfoView: View {
    let color: Color
    let text: String
    let imageName: String
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color.white)
            .frame(height: 50, alignment: .center)
            .cornerRadius(100)
            
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                Text(text)
            })
            .padding(.leading)
            .padding(.trailing)
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(color: Color(red: 0.88, green: 0.37, blue: 0.25, opacity: 1.00), text: "+55 (11) 99463-3788", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
