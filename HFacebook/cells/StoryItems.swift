//
//  StoryItems.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct StoryItems: View {
    var img_url = "001"
    var fio = "Mannonov Husan"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(img_url)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 200, alignment: .center)
                .cornerRadius(15)
            
            Image("user")
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(25)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(.blue, lineWidth: 2))
                .padding(5)
            
            Text(fio)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .fontWeight(.bold)
                .lineLimit(2)
                .frame(width: 90, height: 190, alignment: .bottomLeading)
                .padding(.leading, 10)
        }
    }
}

struct StoryItems_Previews: PreviewProvider {
    static var previews: some View {
        StoryItems()
    }
}
