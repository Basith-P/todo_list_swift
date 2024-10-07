//
//  ListView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var todosViewModel: TodosViewModel
    
    var body: some View {
        List {
            ForEach(todosViewModel.items) { item in
                TodoListItemView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            todosViewModel.toggleStatus(item: item)
                        }
                    }
            }
            .onDelete(perform: todosViewModel.deleteItem)
            .onMove(perform: todosViewModel.moveItem)
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
    .environmentObject(TodosViewModel())
}

