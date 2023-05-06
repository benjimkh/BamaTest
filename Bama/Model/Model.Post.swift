//
//  Model.Post.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation
extension Model {
    struct Post:  Identifiable, Codable {
        var userId : Int
        var id: Int
        var title: String
        var body: String
    }
}

