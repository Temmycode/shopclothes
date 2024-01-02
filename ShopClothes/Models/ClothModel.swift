//
//  ClothModel.swift
//  ShopClothes
//
//  Created by Temiloluwa Akisanya on 02/01/2024.
//

import Foundation
import SwiftUI

struct ClothModel: Identifiable {
    var id = UUID().uuidString
    var liked: Bool
    var clothType: ClothType
    var description: String
    var ratings: Double
    var reviews: Int
    var price: Double
    var imageUrl: String
    
    var image: Image {
        Image(imageUrl)
    }
}


enum ClothType: String {
    case shirt = "Shirt"
    case trousers = "Trousers"
}
