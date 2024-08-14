//
//  TodoListItemView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct TodoListItemView: View {
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}


#Preview {
    TodoListItemView(title: "Example Title")
}
