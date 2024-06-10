//
//  ateteminerApp.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/10.
//

import SwiftUI

@main
struct ateteminerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
