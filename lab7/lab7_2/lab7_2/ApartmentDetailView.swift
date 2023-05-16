//
//  ApartmentDetailView.swift
//  lab7_2
//
//  Created by student on 16/05/2023.
//

import SwiftUI

struct ApartmentDetailView: View {
    let apartment: Apartment
    
    var body: some View {
        VStack {
            Image(apartment.obraz)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(apartment.nazwa)
                .font(.title)
            Text("Powierzchnia: \(apartment.pow) m²")
            Text("Liczba pokoi: \(apartment.liczbaPokoi)")
            Text(apartment.czyDwopoziomowy ? "Mieszkanie dwupoziomowe" : "Mieszkanie jednopoziomowe")
            
            Spacer()
        }
        .padding()
    }
}

struct ApartmentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ApartmentDetailView(apartment: Apartment(nazwa: "Przykladowe mieszkanie", pow: 65.0, liczbaPokoi: 2, czyDwopoziomowy: false, obraz: "apartment2"))
    }
}
