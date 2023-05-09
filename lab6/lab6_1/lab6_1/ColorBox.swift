//
//  ColorBox.swift
//  lab6_1
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct ColorBox: View {
    let color: Color
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: 80, height: 80)
            if isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        }
        .padding()
        .onTapGesture {
            action()
        }
    }
}
