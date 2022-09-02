//
//  ProfileFragments.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct ProfileFragments: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack{
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(25)
                
                Text("What's on your mind?")
                Spacer()
            }.padding(10)
            
            
            VStack {}
            .frame(maxWidth: .infinity)
            .frame(height: 1)
            .background(.gray.opacity(0.2))
            
            HStack {
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "video")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 12)
                        .foregroundColor(.red)
                    
                    Text("Live")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                
                VStack {}
                    .frame(width: 1, height: 20)
                    .background(.gray.opacity(0.2))
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 12)
                        .foregroundColor(.green)
                    
                    Text("Photo")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                
                VStack {}
                    .frame(width: 1, height: 20)
                    .background(.gray.opacity(0.2))
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "video.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 12)
                        .foregroundColor(.indigo)
                    
                    Text("Room")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                
            }.padding(.vertical, 5)
            
            
            
        }.frame(maxWidth: .infinity)
    }
}

struct ProfileFragments_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFragments()
    }
}
