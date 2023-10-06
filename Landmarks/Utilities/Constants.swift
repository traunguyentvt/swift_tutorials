//
//  Constants.swift
//  Landmarks
//
//  Created by VT on 10/5/23.
//

import Foundation
import SwiftUI

struct Constants {
    static let symbolColor = Color(red: 79.0/255.0, green: 79.0/255.0, blue: 191.0/255.0)
    static let gradientStart = Color(red: 239.0/255.0, green: 120.0/255.0, blue: 221.0/255.0)
    static let gradientEnd = Color(red: 239.0/255.0, green: 172.0/255.0, blue: 120.0/255.0)
}

func rangeOfRanges<C: Collection>(_ ranges: C) -> Range<Double> where C.Element == Range<Double> {
    guard !ranges.isEmpty else { return 0..<0 }
    let low = ranges.lazy.map { $0.lowerBound }.min()!
    let high = ranges.lazy.map { $0.upperBound }.max()!
    return low..<high
}

func magnitude(of range: Range<Double>) -> Double {
    range.upperBound - range.lowerBound
}
