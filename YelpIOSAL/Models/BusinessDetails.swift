//
//  BusinessDetails.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import Foundation
import SwiftUI
import CoreLocation


struct BusinessDetails: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var address: String
    var category: String
    var phone: String
    var price: String
    var status: String
    var yelpLink: String
    var photosURL: [String]
}
