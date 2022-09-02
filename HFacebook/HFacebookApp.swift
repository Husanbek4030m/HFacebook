//
//  HFacebookApp.swift
//  HFacebook
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

@main
struct HFacebookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
