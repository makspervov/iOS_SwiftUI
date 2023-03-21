//
//  ContentView.swift
//  lab3_1
//
//  Created by student on 21/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var liczba : Int = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Wciśnij przycisk")
            PanelView(liczba: $liczba)
            Text("Wciśnięto \(liczba) razy!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
