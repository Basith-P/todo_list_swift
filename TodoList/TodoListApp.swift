//
//  TodoListApp.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var todosViewModel = TodosViewModel();
    
    var body: some Scene {
        WindowGroup {
            NavigationView{                
                ListView()
            }
            .environmentObject(todosViewModel)
        }
    }
}
