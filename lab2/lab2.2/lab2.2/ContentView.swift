//
//  ContentView.swift
//  lab2.2
//
//  Created by student on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack{
                VStack{
                    Text("Mój Kotek")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("Autor nieznany")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
                Spacer()
            }
            .padding()
            .background(Color.white.opacity(0.8))
            .offset(y: 170)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
