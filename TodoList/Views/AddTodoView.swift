//
//  AddTodoView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct AddTodoView: View {
    @Environment(\.presentationMode) var presentaionMode
    @EnvironmentObject var todosViewModel: TodosViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle = ""
    @State var showAlert = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter the title", text: $textFieldText)
                    .padding()
                    .background(Color(.lightGray.withAlphaComponent(0.2)))
                    .cornerRadius(12)
                Button(action: saveButtonPresed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(12)
                })

            }.padding()
            
        }
        .navigationTitle("New Todo")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPresed() {
        if !isValid() { return }
            
        todosViewModel.addItem(title: textFieldText)
        presentaionMode.wrappedValue.dismiss()
    }
    
    func isValid() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Title must be at least 3 characters long"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        Alert(title: Text(alertTitle))
    }
    
}

#Preview {
    NavigationView{
        AddTodoView()
    }
    .environmentObject(TodosViewModel())
}
