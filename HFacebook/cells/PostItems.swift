//
//  PostItems.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PostItems: View {
    var type = 0
    
    var imgUrl = "user"
    var fio = "Husanbek"
    var time = "18m"
    var likeCnt = "8.4k"
    var commentCnt = "240"
    var shareCnt = "54"
    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: 10) {
                RoomItems(isOnline: true)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(fio)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    HStack {
                        Text(time).font(.system(size: 14))
                        Image(systemName: "globe").resizable().scaledToFit().frame(height: 14)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(10)
            
            if type == 1 {
                Image(imgUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.screenWidth - 50, height: UIScreen.screenWidth - 50, alignment: .center)
                    .cornerRadius(UIScreen.screenWidth - 50)
                    .overlay(RoundedRectangle(cornerRadius: UIScreen.screenWidth - 50).stroke(.white, lineWidth: 5))
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
            } else if type == 2 {
                HStack(alignment: .center, spacing: 0) {
                    Image(imgUrl).resizable().scaledToFit().frame(width: UIScreen.screenWidth / 2)
                    Image(imgUrl).resizable().scaledToFit().frame(width: UIScreen.screenWidth / 2)
                }
            } else {
                Image(imgUrl).resizable().scaledToFit()
            }
            
            
            
            HStack {
                HStack(alignment: .center, spacing: -5) {
                    Image(systemName: "hand.thumbsup.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(.blue)
                        .cornerRadius(30)
                    
                    Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(.red)
                            .cornerRadius(30)
                }
                
                Text(likeCnt).foregroundColor(.gray).font(.system(size: 14))
                
                Spacer()
                
                Text(commentCnt).foregroundColor(.gray).font(.system(size: 14))
                Text("Comments").foregroundColor(.gray).font(.system(size: 14))
                
                Text(shareCnt).foregroundColor(.gray).font(.system(size: 14))
                Text("Shares").foregroundColor(.gray).font(.system(size: 14))
                
            }.padding(10)
            
            VStack{}.frame(maxWidth: .infinity).frame(height: 1).background(.gray.opacity(0.2))
            
            HStack {
                Spacer()
                
                HStack {
                    Image(systemName: "hand.thumbsup").foregroundColor(.black.opacity(0.7))
                    Text("Like").font(.system(size: 16)).foregroundColor(.black.opacity(0.7))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "bubble.left").foregroundColor(.black.opacity(0.7))
                    Text("Comment").font(.system(size: 16)).foregroundColor(.black.opacity(0.7))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "arrowshape.turn.up.backward").foregroundColor(.black.opacity(0.7))
                    Text("Share").font(.system(size: 16)).foregroundColor(.black.opacity(0.7))
                }
                
                Spacer()
            }.padding(10)
            
            
            LineFragments()
            
            
        }
        
    }
}

struct PostItems_Previews: PreviewProvider {
    static var previews: some View {
        PostItems()
    }
}
