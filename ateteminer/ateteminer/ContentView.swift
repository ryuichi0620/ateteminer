//
//  ContentView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/10.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        VStack {
            Image(.genie, bundle: nil)
        }
    }
    
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
