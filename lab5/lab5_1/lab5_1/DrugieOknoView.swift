//
//  DrugieOknoView.swift
//  lab5_1
//
//  Created by student on 04/04/2023.
//

import SwiftUI

struct DrugieOknoView: View {
    var body: some View {
        VStack{
            Text("Drugie okno")
            NavigationLink("Do trzeciego okna", destination: TrzecieOknoView())
            NavigationLink(destination: TrzecieOknoView(), label: {RectangleView()})
        }
        .padding()
    }
}

struct DrugieOknoView_Previews: PreviewProvider {
    static var previews: some View {
        DrugieOknoView()
    }
}
