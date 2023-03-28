//
//  RadioButton.swift
//  lab4_2
//
//  Created by student on 28/03/2023.
//

import SwiftUI

struct RadioButton: View {
    let text: String
    @Binding var isSelected: String
    let value: String
    
    var body: some View {
        Button(action: {
            isSelected = value
        }) {
            HStack(alignment: .center) {
                if isSelected == value {
                    Image(systemName: "largecircle.fill.circle")
                } else {
                    Image(systemName: "circle")
                }
                Text(text)
            }
            .foregroundColor(.primary)
            .padding(.horizontal)
        }
    }
}

struct RadioButton_Previews: PreviewProvider {
    static var previews: some View {
        RadioButton()
    }
}
