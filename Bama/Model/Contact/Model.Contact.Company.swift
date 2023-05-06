//
//  Model.Contact.Company.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation

extension Model.Contact {
    struct Company : Codable {
        let name: String
        let catchPhrase: String
        let bs: String
    }
}
