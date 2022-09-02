//
//  RoomItems.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct RoomItems: View {
    var isOnline = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("user")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(25)
            
            if isOnline {
                ZStack {
                    Circle()
                            .fill(.white)
                            .frame(width: 14, height: 14, alignment: .center)
                    
                    Circle()
                        .fill(.green)
                        .frame(width: 10, height: 10, alignment: .center)
                }
            }
        }
    }
}

struct RoomItems_Previews: PreviewProvider {
    static var previews: some View {
        RoomItems()
    }
}
