//
//  SecondView.swift
//  lab6_1
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct SecondView: View {
    @Binding var selectedColor: Color
    var body: some View {
        VStack {
            Text("Wybierz kolor:")
            HStack {
                ColorBox(color: .red, isSelected: selectedColor == .red) {
                    selectedColor = .red
                }
                ColorBox(color: .blue, isSelected: selectedColor == .blue) {
                    selectedColor = .blue
                }
            }
            HStack {
                ColorBox(color: .green, isSelected: selectedColor == .green) {
                    selectedColor = .green
                }
                ColorBox(color: .yellow, isSelected: selectedColor == .yellow) {
                    selectedColor = .yellow
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(selectedColor: .constant(.black))
    }
}
