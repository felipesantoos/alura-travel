//
//  ContentView.swift
//  AluraTravel
//
//  Created by Felipe Santos on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: 180.0, alignment: .top)
                List(travels) { travel in
                    TravelCellView(travel: travel)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
