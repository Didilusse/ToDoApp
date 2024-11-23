//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Adil Rahmani on 11/22/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
