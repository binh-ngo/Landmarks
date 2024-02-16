//
//  Landmark.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/14/24.
//
// Foundation framework provides fundamental data types, collections, and operating system services.
import Foundation
// SwiftUI framework is used for building user interfaces across Apple platforms.
import SwiftUI
// CoreLocation framework provides location and heading information to your app.
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
//    returns an image object using the imageName property
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
//    returns a CLLocationCoordinate2D object using the long x lat values
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

