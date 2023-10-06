//
//  ModelData.swift
//  Landmarks
//
//  Created by VT on 9/29/23.
//

import Foundation

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle with error \(error.localizedDescription)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self) with error \(error.localizedDescription)")
    }
}

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.shared
//    @Published var features = [Landmark]()
    
//    func reloadFeatures() {
//        features.removeAll()
//        features.append(contentsOf: landmarks.filter { $0.isFavorite })
//    }
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarks, by: { $0.category.rawValue })
    }
}
