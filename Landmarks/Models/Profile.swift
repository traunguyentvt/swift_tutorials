//
//  Profile.swift
//  Landmarks
//
//  Created by VT on 9/29/23.
//

import Foundation

struct Profile {
    var username: String
    var preferNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let shared = Profile(username: "TVT")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
