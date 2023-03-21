//
//  ContentView.swift
//  Lab 3_2
//
//  Created by student on 21/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    let dostepneRozmiary = ["18", "19", "20"]
    let dostepneProducenty = ["AAA", "BBB", "CCC"]
    
    @State private var rozmiarOpon = 0
    @State private var producentOponow = 0
    @State private var napis = "0"
    
    let dostepneOpony: [[Int]] = [
        [10, 20, 15],
        [5, 10, 5],
        [15, 25, 10]
    ]
    
    var dostopon: Bool {
        guard let count = Int(napis) else { return false }
        return count <= dostepneOpony[rozmiarOpon][producentOponow]
    }
    
    var body: some View {
        VStack {
            Image(systemName: "car")
                .foregroundColor(.green)
            
            Text("Wybierz rozmiar oponów")
            Picker("", selection: $rozmiarOpon) {
                ForEach(0 ..< dostepneRozmiary.count) {
                    Text(self.dostepneRozmiary[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            Text("Wybierz producenta oponów")
            Picker("", selection: $producentOponow) {
                ForEach(0 ..< dostepneProducenty.count) {
                    Text(self.dostepneProducenty[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            TiresView(napis: $napis)
            
            Text(dostopon ? "Opony są dostępne!" : "Opony są niedostępne")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
