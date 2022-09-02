//
//  AddStoryItems.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct AddStoryItems: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack(spacing: 0) {
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 140, alignment: .center)
                
                
                Text("Create a \n Story")
                    .foregroundColor(.black)
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .frame(width: 100, height: 60, alignment: .center)
            }
            .frame(width: 100, height: 200, alignment: .topLeading)
            .background(.gray.opacity(0.2))
            .cornerRadius(15)
            
            
            
            Image(systemName: "plus")
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(25)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 2))
                .padding(.top, 80)
            
            
        }
    }
}

struct AddStoryItems_Previews: PreviewProvider {
    static var previews: some View {
        AddStoryItems()
    }
}
