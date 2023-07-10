//
//  TweetFilterViewModel.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/10/23.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes

    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"

        }
    }
}
