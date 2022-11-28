//
//  HeaderView.swift
//  AluraTravel
//
//  Created by Felipe Santos on 27/11/22.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) var hsc
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("alura travel")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: getHeaderTextSize()))
                    Text("SPECIAL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: getHeaderTextSize()))
                        .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 32.0)
                    Text("BRAZIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: getHeaderTextSize()))
                        .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 32.0)
                        .padding(.bottom, 40.0)
                }
                .background(.purple)
                .frame(width: view.size.width)
                HStack {
                    Button(action: {}) {
                        Text("Hotels")
                            .foregroundColor(.white)
                            .font(.custom("Avenir Medium", size: getButtonHeaderTextSize()))
                    }
                    .frame(width: getButtonHeaderWidth(), height: getButtonHeaderHeight())
                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                        .stroke(.blue, lineWidth: 8.0))
                    .background(.blue)
                    .offset(x: getButtonHeaderHorizontalOffset(screenWidth: view.size.width))
                    Spacer()
                    Button(action: {}) {
                        Text("Packages")
                            .foregroundColor(.white)
                            .font(.custom("Avenir Medium", size: getButtonHeaderTextSize()))
                    }
                    .frame(width: getButtonHeaderWidth(), height: getButtonHeaderHeight())
                    .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(.orange, lineWidth: 8.0))
                    .background(.orange)
                    .offset(x: -getButtonHeaderHorizontalOffset(screenWidth: view.size.width))
                }
                .offset(y: -getButtonHeaderVerticalOffset())
            }
        }.frame(maxHeight: hsc == .compact ? 180 : 290.0)
    }
    
    func getHeaderTextSize() -> Double {
        return hsc == .compact ? 24.0 : 48.0
    }
    
    func getButtonHeaderTextSize() -> Double {
        return hsc == .compact ? 16.0 : 32.0
    }
    
    func getButtonHeaderWidth() -> Double {
        return hsc == .compact ? 96 : 192.0
    }
    
    func getButtonHeaderHeight() -> Double {
        return hsc == .compact ? 48.0 : 96.0
    }
    
    func getButtonHeaderHorizontalOffset(screenWidth: Double) -> Double {
        return hsc == .compact ? screenWidth / 6 : screenWidth / 5
    }
    
    func getButtonHeaderVerticalOffset() -> Double {
        return hsc == .compact ? 24.0 : 48.0
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 393.0, height: 180.0))
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 1024.0, height: 290.0))
        }
    }
}
