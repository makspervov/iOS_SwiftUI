//
//  ContentView.swift
//  lab5_2
//
//  Created by student on 04/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(cars, id: \.name) { car in
                NavigationLink(destination: CarDetailView(car: car)) {
                    Text(car.name)
                }
            }
            .navigationTitle("Cars")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

