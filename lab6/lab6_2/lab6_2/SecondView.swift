//
//  SecondView.swift
//  lab6_2
//
//  Created by student on 09/05/2023.
//

import SwiftUI

struct SecondView: View {
    @Binding var sokDoWyboru: String
    var body: some View {
        VStack {
            Text("Wybierz smak soku")
                .font(.title)
                .padding()
            HStack{
                Image("apple_juice")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .onTapGesture {
                        sokDoWyboru = "Sok jabłkowy"
                    }
                
                Image("orange_juice")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .onTapGesture {
                        sokDoWyboru = "Sok pomarańczowy"
                    }
                
                Image("grapefruit_juice")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .onTapGesture {
                        sokDoWyboru = "Sok grejpfrutowy"
                    }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(sokDoWyboru: .constant(""))
    }
}
