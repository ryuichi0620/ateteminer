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
    
    private var baseView = BaseView()

    var body: some View {
        baseView
    }
    
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}