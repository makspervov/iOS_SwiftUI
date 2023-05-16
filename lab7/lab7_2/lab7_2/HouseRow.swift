//
//  Houserow.swift
//  lab7_2
//
//  Created by student on 16/05/2023.
//

import SwiftUI

struct HouseRow: View {
    let house: House
    
    var body: some View {
        HStack {
            Image(house.obraz)
                .resizable()
                .frame(width: 50, height: 50)
            Text(house.nazwa)
        }
    }
}

struct HouseRow_Previews: PreviewProvider {
    static var previews: some View {
        HouseRow(house: House(nazwa: "Dom przykładowy", pow: 150.0, liczbaPokoi: 3, w_dzialki: 500.0, liczbaPieter: 2, obraz: "house1"))
    }
}
