//
//  ApartmentRow.swift
//  lab7_2
//
//  Created by student on 16/05/2023.
//

import SwiftUI

struct ApartmentRow: View {
    let apartment: Apartment
    
    var body: some View {
        HStack {
            Image(apartment.obraz)
                .resizable()
                .frame(width: 50, height: 50)
            Text(apartment.nazwa)
        }
    }
}

struct ApartmentRow_Previews: PreviewProvider {
    static var previews: some View {
        ApartmentRow(apartment: Apartment(nazwa: "Przykladowe mieszkanie", pow: 65.0, liczbaPokoi: 2, czyDwopoziomowy: false, obraz: "apartment2"))
    }
}
