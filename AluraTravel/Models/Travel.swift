//
//  Viagem.swift
//  new-alura-viagens
//
//  Created by Ândriu Felipe Coelho on 23/01/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import Foundation
import MapKit

struct Travel: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var image: String
    var dayQuantity: String
    var value: String
    var coordinates: Coordinates
    
    var localization: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
