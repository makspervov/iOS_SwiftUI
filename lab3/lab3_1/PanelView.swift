//
//  PanelView.swift
//  lab3_1
//
//  Created by student on 21/03/2023.
//

import SwiftUI

struct PanelView: View {
    @Binding var liczba : Int
    var body: some View {
        Button(action: {
            liczba += 1
        }, label: {
            Text("Wciśnij mnie")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(30)
        })
        Button(action: {
            liczba = 0
        }, label: {
            Image(systemName: "trash")
                .font(.largeTitle)
                .foregroundColor(.red)
        })
    }
}

struct PanelView_Previews: PreviewProvider {
    static var previews: some View {
        PanelView(liczba: .constant(0))
    }
}
