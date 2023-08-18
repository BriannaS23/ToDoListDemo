//
//  NewToDoView.swift
//  ToDoListDemo
//
//  Created by Brianna Silva on 8/17/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
   
    @Binding var showNewTask : Bool
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $title)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $isImportant ) {
                Text("Is it important?")
                    .font(.title2)
            }
            .padding()
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add")
                    .font(.title3)
                    .padding()
            }
            
        }
    
        private func addTask(title: String, isImportant: Bool = false) {
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
            
       }
        }
}
struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false,showNewTask: .constant(true))
    }
}
