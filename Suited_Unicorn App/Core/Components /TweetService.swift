//
//  TweetService.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 8/10/23.
//

import Firebase
struct TweetService{
    
    func uploadTweet(caption: String){
        guard let uid = Auth.auth().currentUser?.uid else {return }
        let data = ["uid": uid, "caption": caption, "likes": 0 , "timestamp": Timestamp(date: Date())] as [String: Any]
        Firestore.firestore().collection("tweets")
            .document()
            .setData(data){
                _ in print("DEBUG: uploaded tweet")
            }
    }
}
