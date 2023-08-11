//
//  ViewTweetView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 7/13/23.
//

import SwiftUI
import Kingfisher
struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authViewModel: AuthViewModel
    @ObservedObject var viewModel = UploadTweetViewModel()
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                    
                } label:{
                    Text("Cancel") 
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                    Button{
                        viewModel.uploadTweet(withcaption: caption)
                    } label:{
                        Text("Tweet")
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                        
                    }
            }
            .padding()
            
            HStack(alignment: .top){
                if let user = authViewModel.currentUser{
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 64, height: 64)
                }
                
                TextArea("Whats on your mind?", text: $caption)
                
            }
            
            .padding()
        }
        .onReceive(viewModel.$didUploadTweet){success in
            if success{
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ViewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
