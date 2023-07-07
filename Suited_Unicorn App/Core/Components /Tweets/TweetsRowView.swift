//
//  TweetsRowView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 6/24/23.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment:.leading){
            //profile image + user info + tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemCyan))
                // user info and tweet caption
                VStack(alignment: .leading, spacing: 4){
                    //user Info
                    HStack{
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                          Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    
                    }
                    //tweet caption
                    Text("I am batman")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                }
            }
            //action buttons
            HStack{
                Button{
                    //action
                    
                    
                    
                    // images from sf symbols
                } label: {
                    Image(systemName: "bubble.left").font(.subheadline)
                    
                }
                Spacer()
                Button{
                    //action
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath").font(.subheadline)
                    
                }
                Spacer()
                Button{
                    //action
                    
                } label: {
                    Image(systemName: "heart").font(.subheadline)
                    
                }
                Spacer()
                Button{
                    //action
                    
                } label: {
                    Image(systemName: "bookmark").font(.subheadline)
                    
                }
                
                
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
            
        
        }
        //.padding()
        
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
