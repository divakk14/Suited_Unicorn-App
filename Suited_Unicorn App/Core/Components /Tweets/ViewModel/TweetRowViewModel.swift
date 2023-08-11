//
//  TweetRowViewModel.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 8/11/23.
//

import Foundation


class TweetRowViewModel: ObservableObject{
    @Published var tweet: Tweet
    private let service = TweetService()
    
    init(tweet: Tweet) {
        self.tweet = tweet
        
    }
    
    func likeTweet() {
        service.likeTweet(tweet) {
            self.tweet.didLike = true
            
        }
    }
}
