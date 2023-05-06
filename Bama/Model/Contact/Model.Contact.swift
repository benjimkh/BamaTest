//
//  Model.Profile.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation

extension Model {
    struct Contact:  Identifiable, Codable {
        
        var id : Int
        var name: String
        var username: String
        var email: String
        var address: Contact.Address
        var phone: String
        var website: String
        var company: Contact.Company

    }
}

