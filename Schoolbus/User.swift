//
//  User.swift
//  Schoolbus
//
//  Created by Justin Hertzberg on 4/23/20.
//  Copyright © 2020 ASU. All rights reserved.
//

import Foundation

struct User: Codable {
    //var userImage: Image?
    var biography: String
    var name: String
    var location: String
    var rating: Int
    //var Role: Role
    //var Meetings: [Meeting]
    
    // some function to load user from backend
    
    static func loadSampleUser() -> User {
        let user = User(biography: "I am a student", name: "Justin Hertzberg", location: "Phoenix, AZ", rating: 9)
        return user
    }
}
