//
//  User.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 8/6/23.
//

import FirebaseFirestoreSwift
import Firebase

struct User:  Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == id}
}
