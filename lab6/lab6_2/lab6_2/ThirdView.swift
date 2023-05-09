//
//  ThirdView.swift
//  lab6_2
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct ThirdView: View {
    @Binding var kawaDoWyboru: String
    var body: some View {
        VStack {
            Text("Wybierz rodzaj kawy")
                .font(.title)
                .padding()
                    
            Button(action: {
                kawaDoWyboru = "Espresso"
            }) {
                Text("Espresso")
            }
            
            Button(action: {
                kawaDoWyboru = "Latte"
            }) {
                Text("Latte")
            }
                    
            Button(action: {
                kawaDoWyboru = "Cappuccino"
            }) {
                Text("Cappuccino")
            }
                    
            Button(action: {
                kawaDoWyboru = "Mocha"
            }) {
                Text("Mocha")
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(kawaDoWyboru: .constant(""))
    }
}
