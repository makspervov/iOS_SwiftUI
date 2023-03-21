//
//  ContentView.swift
//  lab1
//
//  Created by student on 07/03/2023.
//

import SwiftUI

struct ContentView: View {
//    Zadanie 1
//    @State var dzien: String = ""
//    @State var dzienwybrany: String = ""
//    var body: some View {
//        VStack (alignment: .leading){
//            Text("Podaj wybrany dzień tygodnia:")
//            TextField("Wpisz dzień tygodnia", text: $dzien)
//            Button(action: {dzienwybrany=dzien}, label:{Text("Zatwierdź wybór")})
//            Text("Wybrano: \(dzienwybrany)")
//        }
//        .padding()
//    }
    
    @State var dzien: String = ""
    @State var dzienwybrany: String = ""
    @State var czyDobry: String = ""
    let nazwy : [String] = ["Poniedzialek", "Wtorek", "Sroda", "Czwartek", "Piatek", "Sobota", "Niedziela"]
    var body: some View {
        VStack (alignment: .center){
            Text("Podaj wybrany dzień tygodnia:")
                .foregroundColor(.blue)
                .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            
            TextField("Wpisz dzień tygodnia", text: $dzien)
                .multilineTextAlignment(.center)
            
            Button(action: {
                dzienwybrany=dzien
                if nazwy.contains(dzien){
                    czyDobry = "Prawidłowy dzień tygodnia"
                }
                else{
                    czyDobry = "Nieprawidłowy dzień tygodnia"
                }
            }, label:{Text("Zatwierdź wybór")})
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            
            Text("Wybrano: \(dzienwybrany)")
            Text("\(czyDobry)")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
