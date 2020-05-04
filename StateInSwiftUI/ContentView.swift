//
//  ContentView.swift
//  StateInSwiftUI
//
//  Created by Fateh Khan on 04/05/2020.
//  Copyright © 2020 Zarrar Company. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var model = Dish.all()
    
    @State var isSpicy = true
    
    var body: some View {
        List {
            Toggle(isOn: self.$isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            
            ForEach(model.filter{$0.isSpicy == self.isSpicy}) { dish in
                HStack {
                    Image(dish.imageURL)
                        .resizable()              .frame(width: 100, height: 100)
                        .cornerRadius(20)
                    
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    Spacer()
                    if dish.isSpicy {
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }.background(Color.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
