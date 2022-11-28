//
//  MapView.swift
//  AluraTravel
//
//  Created by Felipe Santos on 28/11/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinates: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: travels[0].localization)
    }
}
