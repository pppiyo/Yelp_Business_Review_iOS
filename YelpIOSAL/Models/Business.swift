//
//  Business.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.

//  Abstract:
//  A representation of business.
//

import Foundation
import SwiftUI
import CoreLocation


struct Business: Hashable, Codable, Identifiable {
    var order: Int
    var id: String
    var imgURL: URL
    var name: String
    var rating: String
    var distance: Int
}

//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }

//    private var coordinates: Coordinates
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
//
//    struct Coordinates: Hashable, Codable {
//        var latitude: Double
//        var longitude: Double
//    }
//}


