//
//  TireSizeView.swift
//  Lab 3_2
//
//  Created by student on 21/03/2023.
//

import SwiftUI

struct TiresView: View {
    @Binding var napis : String
    var body: some View {
        Text("Wprowadż liczbę oponów")
        TextField("Liczba oponów", text: $napis)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
    }
}

struct TiresView_Previews: PreviewProvider {
    static var previews: some View {
        TiresView(napis: .constant("0"))
    }
}
