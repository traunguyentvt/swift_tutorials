//
//  Landmark.swift
//  Landmarks
//
//  Created by VT on 9/29/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var state: String
    var park: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var category: Category
    
    private var imageName: String
    private var coordinates: Coordinates
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude , longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
