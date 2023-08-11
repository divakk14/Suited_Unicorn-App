//
//  UploadTweetViewModel.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 8/10/23.
//

import Foundation
class UploadTweetViewModel : ObservableObject{
    let service = TweetService()
    func uploadTweet(withcaption caption: String){
        service.uploadTweet(caption: caption)
    }
    
}
