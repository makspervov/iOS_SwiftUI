//
//  ContentView.swift
//  lab6_3
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct Book{
    var tytul: String
    var autor: String
    var ilosc: Int
}

struct ContentView: View {
    @State private var ShowSecond: Bool = false
    var body: some View {
        VStack {
            HStack{
                Text("Autor")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            Spacer()
            Button(action: {
                self.ShowSecond.toggle()
            }, label: {
                Text("Wybierz autora")
            })
            .sheet(isPresented: $ShowSecond){
                SecondView()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
