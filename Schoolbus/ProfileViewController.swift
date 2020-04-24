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
    
    var user = User(biography: "I am a person", name: "Justin Hertzberg", location: "Phoenix, AZ", rating: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // need role and image
        name.text = user.name
        location.text = user.location
        biography.text = user.biography
    }
    
    @IBAction func savedEditButtonPressed(_ sender: Any) {
        
    }
}
