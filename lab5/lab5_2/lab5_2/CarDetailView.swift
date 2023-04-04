//
//  CarDetailView.swift
//  lab5_2
//
//  Created by student on 04/04/2023.
//

import SwiftUI

struct Car {
    var name: String
    var models: [String]
}

let cars = [
    Car(name: "Ford", models: ["Mustang", "F-150", "Explorer"]),
    Car(name: "Chevrolet", models: ["Camaro", "Silverado", "Tahoe"]),
    Car(name: "Tesla", models: ["Model S", "Model 3", "Model X"]),
]

struct CarDetailView: View {
    let car: Car
    
    var body: some View {
        List(car.models, id: \.self) { model in
            Text(model)
        }
        .navigationTitle(car.name)
    }
}

struct CarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailView(car: Car(name: "Ford", models: ["Mustang", "F-150", "Explorer"]))
    }
}
