//
//  Phase2App.swift
//  Phase2
//
//  Created by rwilangk on 4/16/24.
//

import SwiftUI

@main
struct Phase2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
