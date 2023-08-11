//
//  UploadTweetViewModel.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 8/10/23.
//

import Foundation
class UploadTweetViewModel : ObservableObject{
    @Published var didUploadTweet = false
    
    let service = TweetService()
    
    func uploadTweet(withcaption caption: String){
        service.uploadTweet(caption: caption){ success in
            if success {
                self.didUploadTweet = true
                
            }else{
                //show error message to user..
            }
        }
    }
}
