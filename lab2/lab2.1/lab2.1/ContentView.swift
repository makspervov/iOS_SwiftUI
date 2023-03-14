//
//  ContentView.swift
//  lab2.1
//
//  Created by student on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    let tablicaKolorow = [Color.red, Color.orange, Color.yellow, Color.green, Color.cyan, Color.blue, Color.purple]
    @State var i: Int = 0
    var body: some View {
        VStack {
            ZStack{
                ForEach(0..<tablicaKolorow.count, id: \.self){
                i in Rectangle()
                    .fill(tablicaKolorow[i])
                    .frame(width: 200, height: 200)
                    .offset(x: CGFloat(i) * 10.0, y: CGFloat(i) * 10.0)
                }
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
