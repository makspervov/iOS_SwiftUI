//
//  ContentView.swift
//  lab6_2
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowSecond: Bool = false
    @State private var ShowThird: Bool = false
    
    @State var wybranySok: String = ""
    @State var wybranaKawa: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Button(action: {
                self.ShowSecond.toggle()
            }, label: {
                Text("Wybierz sok")
            })
            .sheet(isPresented: $ShowSecond){
                SecondView(sokDoWyboru: $wybranySok)
            }
            Text("\(wybranySok)")
            
            Button(action: {
                self.ShowThird.toggle()
            }, label: {
                Text("Wybierz kawę")
            })
            .sheet(isPresented: $ShowThird){
                ThirdView(kawaDoWyboru: $wybranaKawa)
            }
            Text("\(wybranaKawa)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
