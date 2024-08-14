//
//  ListView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [TodoItem] = [
       TodoItem(title: "Buy groceries", isCompleted: false),
       TodoItem(title: "Check on the project", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) {
                item in TodoListItemView(item: item)
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

