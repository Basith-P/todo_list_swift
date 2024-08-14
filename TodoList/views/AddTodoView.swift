//
//  AddTodoView.swift
//  TodoList
//
//  Created by Basith on 14/08/24.
//

import SwiftUI

struct AddTodoView: View {
    @State var title: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter the title", text: $title)
                    .background(.red)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    
                })

            }.padding()
            
        }
            .navigationTitle("New Todo")
    }
}

#Preview {
    NavigationView{
        AddTodoView()
    }
}
