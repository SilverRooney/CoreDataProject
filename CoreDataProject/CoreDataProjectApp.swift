//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Silver on 7/7/22.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    //make instance of our data
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
