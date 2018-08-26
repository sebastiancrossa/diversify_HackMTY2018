//
//  DataService.swift
//  diversify
//
//  Created by Sebastian Crossa on 8/26/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import Foundation
import Firebase

import Foundation
import Firebase

// URL Base de nuestra base de datos
let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
  
    private var _REF_BASE = DB_BASE
    private var _REF_NAME = DB_BASE.child("name")
    private var _REF_EMAIL = DB_BASE.child("email")
    // --
    
    // Public variables
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_NAME: DatabaseReference {
        return _REF_NAME
    }
    
    var REF_EMAIL: DatabaseReference {
        return _REF_EMAIL
    }
    
}
// --
