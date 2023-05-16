//
//  ContentView.swift
//  lab7_2
//
//  Created by student on 16/05/2023.
//

import SwiftUI

struct House: Identifiable {
    let id = UUID()
    let nazwa: String
    let pow: Double
    let liczbaPokoi: Int
    let w_dzialki: Double
    let liczbaPieter: Int
    let obraz: String
}

struct Apartment: Identifiable{
    let id = UUID()
    let nazwa: String
    let pow: Double
    let liczbaPokoi: Int
    let czyDwopoziomowy: Bool
    let obraz: String
}


struct ContentView: View {
    let apartments: [Apartment] = [
            Apartment(nazwa: "Mieszkanie 1", pow: 80.0, liczbaPokoi: 3, czyDwopoziomowy: false, obraz: "apartment1"),
            Apartment(nazwa: "Mieszkanie 2", pow: 100.0, liczbaPokoi: 4, czyDwopoziomowy: true, obraz: "apartment2")
        ]
        
    let houses: [House] = [
            House(nazwa: "Dom 1", pow: 200.0, liczbaPokoi: 5, w_dzialki: 500.0, liczbaPieter: 2, obraz: "house1"),
            House(nazwa: "Dom 2", pow: 300.0, liczbaPokoi: 6, w_dzialki: 800.0, liczbaPieter: 3, obraz: "house2")
        ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Domy")) {
                    ForEach(houses) { house in
                        NavigationLink(destination: HouseDetailView(house: house)) {
                            HouseRow(house: house)
                        }
                    }
                }
                
                Section(header: Text("Mieszkania")) {
                    ForEach(apartments) { apartment in
                        NavigationLink(destination: ApartmentDetailView(apartment: apartment)) {
                                ApartmentRow(apartment: apartment)
                        }
                    }
                }
            }
            .navigationTitle("Nieruchomości")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
