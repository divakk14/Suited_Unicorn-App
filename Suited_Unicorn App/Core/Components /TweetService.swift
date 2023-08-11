//
//  TweetService.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 8/10/23.
//

import Firebase
struct TweetService{
    
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void) {
        
        guard let uid = Auth.auth().currentUser?.uid else {return }
        
        let data = ["uid": uid,
                    "caption": caption,
                    "likes": 0 ,
                    "timestamp": Timestamp(date: Date())] as [String: Any]
        Firestore.firestore().collection("tweets").document()
            .setData(data){ error in
                if let error = error  {
                    print("DEBUG: Failed to upload tweet with error: \(error.localizedDescription)")
                    completion(false)
                    return
                }
                completion(true)
                
            }
    }
    
    func fetchTweets(completion: @escaping([Tweet]) -> Void) {
        Firestore.firestore().collection("tweets").getDocuments {snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let tweets = documents.compactMap({try?  $0.data(as: Tweet.self) })
            completion(tweets)
            
        }
    }
}
