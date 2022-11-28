//
//  TravelCellView.swift
//  AluraTravel
//
//  Created by Felipe Santos on 27/11/22.
//

import SwiftUI

struct TravelCellView: View {
    @Environment(\.horizontalSizeClass) var hsc
    var travel: Travel
    var body: some View {
        VStack(alignment: .leading) {
            Text(travel.title)
                .font(.custom("Avenir", size: hsc == .compact ? 16.0 : 32.0))
            Image(travel.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: hsc == .compact ? 180.0 : 360.0)
                .clipped()
            HStack {
                Text(travel.dayQuantity)
                    .font(.custom("Avenir", size: hsc == .compact ? 16.0 : 32.0))
                Spacer()
                Text(travel.value)
                    .font(.custom("Avenir", size: hsc == .compact ? 16.0 : 32.0))
            }
        }
        .frame(height: hsc == .compact ? 270.0 : 540.0)
//        .background(.red)
    }
}

struct TravelCellView_Previews: PreviewProvider {
    static var previews: some View {
        TravelCellView(travel: travels[0])
            .environment(\.horizontalSizeClass, .compact)
            .previewLayout(.fixed(width: 393.0, height: 270.0))
        TravelCellView(travel: travels[0])
            .environment(\.horizontalSizeClass, .regular)
            .previewLayout(.fixed(width: 1024.0, height: 540.0))
    }
}
