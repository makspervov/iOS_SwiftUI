//
//  HouseDetailView.swift
//  lab7_2
//
//  Created by student on 16/05/2023.
//

import SwiftUI

struct HouseDetailView: View {
    let house: House
        
    var body: some View {
        VStack {
            Image(house.obraz)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(house.nazwa)
                .font(.title)
            Text("Powierzchnia: \(house.pow) m²")
            Text("Liczba pokoi: \(house.liczbaPokoi)")
            Text("Wielkość działki: \(house.w_dzialki) m²")
            Text("Liczba pięter: \(house.liczbaPieter)")
            
            Spacer()
        }
        .padding()
    }
}

struct HouseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HouseDetailView(house: House(nazwa: "Dom przykładowy", pow: 150.0, liczbaPokoi: 3, w_dzialki: 500.0, liczbaPieter: 2, obraz: "house1"))
    }
}
