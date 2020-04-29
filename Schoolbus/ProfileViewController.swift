//
//  ProfileViewController.swift
//  Schoolbus
//
//  Created by Justin Hertzberg on 4/23/20.
//  Copyright © 2020 ASU. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var role: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var biography: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editBiography: UILabel!
    @IBOutlet weak var editLocation: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var user: User?
    
    //user = User(biography: "I am a person", name: "Justin Hertzberg", location: "Phoenix, AZ", rating: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // need role and image
        loadSampleUser()
        
        if let user = user {
            name.text = user.name
            biography.text = user.biography
            location.text = user.location
        }
//
//        if let name = user?.name {self.name.text = name}
//        if let location = user?.location {self.location.text = location}
//        if let biography = user?.biography { self.biography.text = biography}
    }
    
    func loadSampleUser() {
        print("load sample users function called")
        let name = "Justin Hertzberg"
        let biography = "I am a student."
        let location = "Phoenix, AZ"
        let rating = 9
        user = User(biography: biography, name: name, location: location, rating: rating)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard segue.identifier == "editProfile" else {return}
        
        // populate 'edit' text boxes with user info
        if (segue.identifier == "editProfile") {
            print("edit profile")
            if let uName = user?.name {editName.text = uName}
            if let uLocation = user?.location {editLocation.text = uLocation}
            if let uBiography = user?.biography {editBiography.text = uBiography}
        }
//        // save user info
//        else if (segue.identifier == "saveEdit") {
//            if let eName = editName.text {user?.name = eName}
//            if let eLocation = editLocation.text {user?.location = eLocation}
//            if let eBiography = editBiography.text {user?.biography = eBiography}
//        }
        else {return}
    }
}
