//
//  StuffApp.swift
//  Stuff
//
//  Created by Apple on 22/02/24.
//

import SwiftUI

@main
struct StuffApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
