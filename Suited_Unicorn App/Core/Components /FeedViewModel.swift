//
//  FeedViewModel.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 8/10/23.
//

import Foundation

class FeedViewModel: ObservableObject{
    @Published var tweets = [Tweet]()
    let service = TweetService()
    let userService = UserService()
    
    init(){
        fetechTweets()
    }
    
    func fetechTweets(){
        service.fetchTweets { tweets in
            self.tweets = tweets
            
            for i in 0 ..< tweets.count {
                let uid = tweets[i].uid
                
                self.userService.fetchUser(with: uid) { user in
                    self.tweets[i].user = user
                    
                }
            }
                    
        }
    }
}

//[tweet1, tweet2, tweet3, tweet4]
