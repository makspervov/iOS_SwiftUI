//
//  ContentView.swift
//  lab2.3
//
//  Created by student on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sideA: Int = 0
    @State private var sideB: Int = 0
    @State private var sideC: Int = 0
    
    private var canBuildTriangle: Bool {
        sideA + sideB > sideC &&
        sideB + sideC > sideA &&
        sideC + sideA > sideB
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Bok A: ")
                TextField("Bok A", text: Binding(
                    get: { String(sideA) },
                    set: { sideA = Int($0) ?? 0 }
                ))
            }
            
            HStack {
                Text("Bok B: ")
                TextField("Bok B", text: Binding(
                    get: { String(sideB) },
                    set: { sideB = Int($0) ?? 0 }
                ))
            }
            
            HStack {
                Text("Bok C: ")
                TextField("Bok C", text: Binding(
                    get: { String(sideC) },
                    set: { sideC = Int($0) ?? 0 }
                ))
            }
            
            Button(action: {
                if canBuildTriangle {
                    showAlert(title: "Można zbudować trójkąt", message: "Długości boków: \(sideA), \(sideB), \(sideC)")
                } else {
                    showAlert(title: "Nie można zbudować trójkąta", message: "Długości boków: \(sideA), \(sideB), \(sideC)")
                }
            }, label: {
                Text("Trojkat")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(canBuildTriangle ? Color.green : Color.red)
                    .cornerRadius(10)
            })
            .padding()
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
