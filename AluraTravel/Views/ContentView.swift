//
//  ContentView.swift
//  AluraTravel
//
//  Created by Felipe Santos on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                    List(travels) { travel in
                        NavigationLink(destination: MapView(coordinates: travel.localization).navigationBarTitle("Localization")) {
                            TravelCellView(travel: travel)
                        }
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
