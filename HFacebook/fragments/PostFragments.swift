//
//  PostFragments.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PostFragments: View {
    var body: some View {
        
        VStack {
            PostItems(type: 0, imgUrl: "001", fio: "Azizova S", time: "18m", likeCnt: "5.2K", commentCnt: "214", shareCnt: "800")
                
                PostItems(type: 1,imgUrl: "user", fio: "Bakiyev S", time: "59m", likeCnt: "4.9K", commentCnt: "489", shareCnt: "43")
                
                PostItems(type: 2,imgUrl: "003", fio: "Farxod S", time: "23m", likeCnt: "8.1K", commentCnt: "753", shareCnt: "233")
            
            
                PostItems(type: 0, imgUrl: "002", fio: "Azizova S", time: "18m", likeCnt: "5.2K", commentCnt: "214", shareCnt: "800")
            
            
                PostItems(type: 0, imgUrl: "004", fio: "Azizova S", time: "18m", likeCnt: "5.2K", commentCnt: "214", shareCnt: "800")
            
        }
        
    }
}

struct PostFragments_Previews: PreviewProvider {
    static var previews: some View {
        PostFragments()
    }
}
