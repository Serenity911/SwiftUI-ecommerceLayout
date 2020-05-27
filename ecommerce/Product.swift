//
//  Product.swift
//  ecommerce
//
//  Created by Serenity on 26/05/2020.
//  Copyright © 2020 Serenity. All rights reserved.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var description: String
//    we do not want to store UI element in a model!
    var imageName: String
}
