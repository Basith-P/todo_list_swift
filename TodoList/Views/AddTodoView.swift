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
                    .padding()
                    .background(Color(#colorLiteral(red: 2, green: 2, blue: 2, alpha: 1)))
                    .cornerRadius(12)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
    }
}

#Preview {
    NavigationView{
        AddTodoView()
    }
}
