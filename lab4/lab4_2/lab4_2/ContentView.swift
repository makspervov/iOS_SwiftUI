//
//  ContentView.swift
//  lab4_2
//
//  Created by student on 28/03/2023.
//

import SwiftUI

func colorString (c : Color) -> String {
    switch c {
        case Color.red:
            return "Czerwony"
        case Color.yellow:
            return "Zolty"
        case Color.green:
            return "Zielony"
        case Color.blue:
            return "Niebieski"
        default:
            return "Niebieski"
    }
}

func shapeShifter (ksztalt: String, kolor: Color, xr: Int, yr: Int) -> some View {
    switch ksztalt {
        case "Kolo":
            return AnyView(Circle()
            .fill(kolor)
            .frame(width: CGFloat(xr), height: CGFloat(yr)))
        default:
            return AnyView(Rectangle()
            .fill(kolor)
            .frame(width: CGFloat(xr), height: CGFloat(yr)))
    }
}

struct ContentView: View {
    @State var ksztalty : [String] = ["Prostokat", "Kolo", "inne"]
    @State var wyb_kszt : String = ""
    @State var kolory = [Color.red, Color.yellow, Color.green, Color.blue]
    @State var wyb_kol : Color = Color.black
    @State var xr : Int = 20
    @State var yr : Int = 30
    @State var rr = false
    
    var body: some View {
    VStack {
        HStack {
            Spacer()
            Text("Figury").foregroundColor(.blue).font(.title)
            Spacer()
        }.background(.white).frame(height: 200)

        Picker(selection: $wyb_kszt, label: Text("Ksztalt:")) {
            ForEach(ksztalty, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(SegmentedPickerStyle())

        Picker(selection: $wyb_kol, label: Text("Kolor"), content: {
            ForEach(kolory, id: \.self) {
                Text(colorString(c:$0))
            }
        })
        .pickerStyle(SegmentedPickerStyle())

        HStack {
            Text("Ramka:")
            TextField("xr", text: Binding(
                get: {String(xr)},
                set: {xr = Int($0) ?? 0}
            ))
                .frame(width: 50)
            
            Text("x")
            TextField("yr", text: Binding(
                get: {String(yr)},
                set: {yr = Int($0) ?? 0}
            ))
                .frame(width: 50)
        }
        Toggle("Rysuj ramke", isOn: $rr).toggleStyle(SwitchToggleStyle(tint: .green))
        Rectangle().foregroundColor(Color.black.opacity(0)).frame(
            width: CGFloat(xr),
            height: CGFloat(yr)).border(
                Color.black,
                width: (rr ? 2 : 0)).overlay(
                    shapeShifter(ksztalt: wyb_kszt, kolor: wyb_kol, xr: xr, yr: yr))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
