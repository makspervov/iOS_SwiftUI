//
//  ContentView.swift
//  lab6_1
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var textColor = Color.black
    @State private var showColorSelection = false
    
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(textColor)
                Text("Hello, world!")
                    .foregroundColor(textColor)
                NavigationLink( destination: SecondView(selectedColor: $textColor), label:{
                    Text("Drugi widok")
                        .fontWeight(.bold)
                })
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
