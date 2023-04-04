//
//  RectangleView.swift
//  lab5_1
//
//  Created by student on 04/04/2023.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.gray)
                .frame(width: 200, height: 200)
                .border(Color.cyan, width: 5)
            Rectangle()
                .fill(.yellow)
                .frame(width: 95, height: 190)
                .offset(x: 48, y: 0)
            Rectangle()
                .fill(.white)
                .frame(width: 95, height: 95)
                .offset(x: 48, y: 48)
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
