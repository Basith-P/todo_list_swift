//
//  ListViewViewModel.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import Foundation

class TodosViewModel: ObservableObject {
    @Published var  items: [TodoItem] = [] {
        didSet { saveItems() }
    }
    
    let itemsKey = "items"
    
    init() {
        getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([TodoItem].self, from: data)
        else { return }
         
        self.items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = TodoItem(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func toggleStatus(item: TodoItem) {
        if let i = items.firstIndex(where: { $0.id == item.id }) {
            items[i] = item.toggleStatus()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey )
        }
    }
}
