//
//  TweetsRowView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 6/24/23.
//

import SwiftUI
import Kingfisher

struct TweetRowView: View {
    @ObservedObject var viewModel: TweetRowViewModel
    
    init(tweet: Tweet){
        self.viewModel = TweetRowViewModel(tweet: tweet)
    }
    
    var body: some View {
        VStack(alignment:.leading){
            //profile image + user info + tweet
            if let user = viewModel.tweet.user {
                HStack(alignment: .top, spacing: 12){
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                        
                    // user info and tweet caption
                    VStack(alignment: .leading, spacing: 4){
                        //user Info
                        
                        HStack{
                            Text(user.fullname)
                                .font(.subheadline).bold()
                            
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                              Text("2w")
                                .foregroundColor(.gray)
                                .font(.caption)
                        
                        }
                        
                        //tweet caption
                        Text(viewModel.tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                        
                    }
                }
            }
            //action buttons
            HStack{
                Button{
                    //action
                    
                    // images from sf symbols
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                    
                }
                Spacer()
                Button{
                    //action
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath").font(.subheadline)
                    
                }
                Spacer()
                Button{
                    viewModel.tweet.didLike ?? false ?
                    viewModel.unlikedTweet() :
                    viewModel.likeTweet()
                    
                } label: {
                    Image(systemName: viewModel.tweet.didLike ?? false ? "heart.fill" : "heart")
                        .font(.subheadline)
                        .foregroundColor(viewModel.tweet.didLike ?? false ? .red : .gray)
                    
                }
                
                Spacer()
                
                Button{
                    //action
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}
//
//struct TweetsRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRowView()
//    }
//}
