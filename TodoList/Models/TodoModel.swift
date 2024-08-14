//
//  TodoModel.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import Foundation

struct TodoItem: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
