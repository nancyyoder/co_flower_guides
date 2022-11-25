//
//  Flower.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/16/22.
//

import Foundation
import SwiftUI

struct Flower: Hashable, Codable, Identifiable {
    var name: String
    var binomial: String
    var description: String
    
    var id: Int
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var backgroundImageName: String
    var backgroundImage: Image {
        Image(backgroundImageName)
    }
}
