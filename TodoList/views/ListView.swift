//
//  ListView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "First Todo",
        "Second Todo",
        "Third Todo"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                item in TodoListItemView(title: item)
            }
        }.navigationTitle("ToDos 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing: NavigationLink(
                "Add", destination: AddTodoView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

