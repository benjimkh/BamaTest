//
//  Moddel.Contact.Address.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation
extension Model.Contact {
    struct Address: Codable {
        var street: String
        var suite: String
        var city: String
        var zipcode: String
        var geo: Address.Geo
    }
}

extension Model.Contact.Address {
    struct Geo: Codable {
        let lat: String
        let lng: String
    }
}
