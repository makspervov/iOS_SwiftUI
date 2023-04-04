//
//  ContentView.swift
//  lab5_1
//
//  Created by student on 04/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink("Do drugiego okna", destination: DrugieOknoView())
                    .offset(x:0, y:500)
                NavigationLink(destination: DrugieOknoView(), label: {
                    Path{
                        path in
                        path.move(to: CGPoint(x: 0, y: 150))
                        path.addLine(to: CGPoint(x: 150, y: -100))
                        path.addLine(to: CGPoint(x: 300, y: 150))
                        path.closeSubpath()
                    }
                    .fill(Color.green)
                    .offset(x: 50, y: 250)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
