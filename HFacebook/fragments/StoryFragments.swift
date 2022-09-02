//
//  StoryFragments.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct StoryFragments: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                AddStoryItems()
                StoryItems(img_url: "001", fio: "Mannonov Husan")
                StoryItems(img_url: "002", fio: "Alijonov Anvarbek")
                StoryItems(img_url: "003", fio: "Bakiyev Samad")
                StoryItems(img_url: "004", fio: "Orifjonov Laylo")
            }.padding(10)
        }
    }
}

struct StoryFragments_Previews: PreviewProvider {
    static var previews: some View {
        StoryFragments()
    }
}
