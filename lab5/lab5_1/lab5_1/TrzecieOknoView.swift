//
//  TrzecieOknoView.swift
//  lab5_1
//
//  Created by student on 04/04/2023.
//

import SwiftUI

struct TrzecieOknoView: View {
    var body: some View {
        Text("Trzecie okno")
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(width: 300, height: 200)
                .border(.blue, width: 2)
            RoundedRectangle(cornerRadius: 50)
                .fill(.blue)
                .frame(width: 200, height: 200)
            RoundedRectangle(cornerRadius: 50)
                .fill(.green)
                .frame(width: 200, height:100)
            Circle()
                .fill(.red)
                .frame(width: 50)
        }
        .padding()
    }
}

struct TrzecieOknoView_Previews: PreviewProvider {
    static var previews: some View {
        TrzecieOknoView()
    }
}
