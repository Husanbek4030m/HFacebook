//
//  RoomFragments.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct RoomFragments: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                HStack {
                    Image(systemName: "video.badge.plus")
                        .foregroundColor(.blue)
                        .padding(.leading, 5)
                    Text("Create Room")
                        .lineLimit(2)
                        .font(.system(size: 12))
                        .foregroundColor(.blue)
                        .frame(width: 50)
                }
                .padding(5)
                .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous).stroke(.blue.opacity(0.2), lineWidth: 2))
                
                RoomItems(isOnline: false)
                RoomItems(isOnline: false)
                RoomItems(isOnline: true)
                RoomItems(isOnline: true)
                RoomItems(isOnline: true)
                RoomItems(isOnline: true)
                RoomItems(isOnline: true)
            }
        }.padding(10)
    }
}

struct RoomFragments_Previews: PreviewProvider {
    static var previews: some View {
        RoomFragments()
    }
}
