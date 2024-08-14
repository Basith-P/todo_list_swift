//
//  TodoListItemView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct TodoListItemView: View {
    let item: TodoItem
    
    var body: some View {
        HStack{
            Image(systemName:item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
        }
        .font(.title3)
        .padding(.vertical, 8)    }
}


#Preview {
    
    Group {
        TodoListItemView(item: TodoItem(title: "Example", isCompleted: true))
        TodoListItemView(item: TodoItem(title: "Example 2", isCompleted: false))
    }
    .previewLayout(.sizeThatFits)
}
