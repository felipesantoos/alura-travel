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
                VStack {
                    Text("alura travel")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 24.0))
                    Text("SPECIAL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: 24.0))
                        .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 32.0)
                    Text("BRAZIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 24.0))
                        .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 32.0)
                        .padding(.bottom, 32.0)
                }
                .background(.purple)
                .frame(width: view.size.width)
                HStack {
                    Button(action: {}) {
                        Text("Hotels")
                            .foregroundColor(.white)
                            .font(.custom("Avenir Medium", size: 16.0))
                    }
                    .frame(width: 100.0, height: 50.0)
                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                        .stroke(.blue, lineWidth: 8.0))
                    .background(.blue)
                    .offset(x: 50.0)
                    Spacer()
                    Button(action: {}) {
                        Text("Packages")
                            .foregroundColor(.white)
                            .font(.custom("Avenir Medium", size: 16.0))
                    }
                    .frame(width: 100.0, height: 50.0)
                    .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(.orange, lineWidth: 8.0))
                    .background(.orange)
                    .offset(x: -50.0)
                }
                .offset(y: -25.0)
                List {
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
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
