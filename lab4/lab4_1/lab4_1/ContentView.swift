//
//  ContentView.swift
//  lab4_1
//
//  Created by student on 28/03/2023.
//

import SwiftUI

struct ContentView: View {
    let waluty = ["USD", "EUR", "GBP", "CHF", "PLN"]
        
    @State private var walutaKupno = 0
    @State private var walutaSprzedaz = 1
    @State private var input = ""
    @State private var output = ""

    func convertCurrency() {
        guard let input = Double(input) else {
            return
        }
        output = String(format: "%.2f", input * Double.random(in: 3...4.5))
    }

    
    var body: some View {
        VStack {
            Text("Kantor XYZ")
                .font(.title)
                .padding(.top, 40)
            
            HStack{
                Text("Kupuję:")
                Picker("", selection: $walutaKupno){
                    ForEach(0 ..< waluty.count) {
                        Text(self.waluty[$0])
                    }
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            HStack{
                Text("Płacę: ")
                Picker("", selection: $walutaSprzedaz) {
                    ForEach(0 ..< waluty.count) {
                        index in
                        if index != self.walutaKupno{
                            Text(self.waluty[index])
                        }
                    }
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            KwotaField(napis: $input)
            
            Button(action: {convertCurrency()}) {
                Text("Przelicz")
                    .font(.title3)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Text("Kwota do zapłaty: \(output) \n")
            
            Text("Godziny otwarcia: 8:00 - 18:00")
                .font(.subheadline)
                .padding(.top, 100)
                .foregroundColor(.gray)
            Text("Kontakt: tel. 123456789")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("email: kantor@xyz.pl")
                .font(.subheadline)
                .padding(.bottom, 40)
                .foregroundColor(.gray)
        }
        .padding()
        
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
