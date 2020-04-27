//
//  User.swift
//  Schoolbus
//
//  Created by student on 4/27/20.
//  Copyright © 2020 ASU. All rights reserved.
//

import Foundation


class User {
    var username: String
    var password: String
    var  description: String
    var rating: Float
    var acquaintances: [User]
    //var messages: [Message]
    
    init(){
        username = ""
        password = ""
        description = ""
        rating = 0.0
        acquaintances = []
    }
    
    func sendMessage(user: User ) {
        
    }
    
//    func openMessage(message: Message) {
//
//    }
    
    func addUser(user: User){
        
    }
    
    func removeUser(user: User){
        
    }
    
}
