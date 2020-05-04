//
//  ContentView.swift
//  StateInSwiftUI
//
//  Created by Fateh Khan on 04/05/2020.
//  Copyright © 2020 Zarrar Company. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var Tasks = [Task]()
    
    private func addTask() {
        self.Tasks.append(Task(name: "Something Bigger"))
    }
    var body: some View {
        List {
            Button(action: addTask) {
                Text("Add Task")
            }
            ForEach(Tasks) { task in
                Text(task.name)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
