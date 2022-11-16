//
//  Flower.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/16/22.
//

import Foundation
import SwiftUI

struct Flower: Hashable, Codable {
    var id: Int
    var name: String
    var binomal: String
    var colors: [String]
    var shapes: [String]
    var states: [String]
    var smells: [String]
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
