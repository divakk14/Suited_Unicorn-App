//
//  Tweet.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 8/11/23.
//

import FirebaseFirestoreSwift
import Firebase


struct Tweet: Identifiable, Decodable{
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
    
    
}


