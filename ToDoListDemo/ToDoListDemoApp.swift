//
//  ToDoListDemoApp.swift
//  ToDoListDemo
//
//  Created by Brianna Silva on 8/17/23.
//

import SwiftUI

@main
struct ToDoListDemoApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
