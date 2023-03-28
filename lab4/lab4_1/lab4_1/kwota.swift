//
//  kwota.swift
//  lab4_1
//
//  Created by student on 28/03/2023.
//

import SwiftUI

struct KwotaField: View {
    @Binding var napis : String
    var body: some View {
        TextField("Kwota", text: $napis)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
    }
}

struct KwotaField_Previews: PreviewProvider {
    static var previews: some View {
        KwotaField(napis: .constant("0"))
    }
}
