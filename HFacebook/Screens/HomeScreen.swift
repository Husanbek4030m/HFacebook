//
//  HomeScreen.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    
                    //profile, live, photo room
                    ProfileFragments()
                    
                    //------------
                    LineFragments()
                    
                    //room
                    RoomFragments()
                    
                    //------------
                    LineFragments()
                    
                    //story
                    StoryFragments()
                    
                    //------------
                    LineFragments()
                    
                    //post items
                    PostFragments()
                    
                }
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.blue),
                trailing: HStack {
                    ZStack {
                        Circle()
                            .fill(.gray.opacity(0.2))
                            .frame(width: 40, height: 40, alignment: .center)
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                    
                    ZStack {
                        Circle()
                            .fill(.gray.opacity(0.2))
                            .frame(width: 40, height: 40, alignment: .center)
                        
                        Image(systemName: "message").resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                })
            .navigationBarTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
