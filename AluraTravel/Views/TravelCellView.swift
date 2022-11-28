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
            Image(travel.image)
                .resizable()
                .frame(height: hsc == .compact ? 200.0 : 500.0)
            HStack {
                Text(travel.dayQuantity)
                Spacer()
                Text(travel.value)
            }
        }
    }
}

struct TravelCellView_Previews: PreviewProvider {
    static var previews: some View {
        TravelCellView(travel: travels[0])
    }
}
