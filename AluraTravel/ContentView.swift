//
//  ContentView.swift
//  AluraTravel
//
//  Created by Felipe Santos on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Text("Alura Travel")
            Text("SPECIAL")
            Text("BRAZIL")
            
            List {
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("Rio de Janeiro")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
