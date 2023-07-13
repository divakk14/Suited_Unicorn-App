//
//  FeedView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 6/24/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        
        
        ZStack (alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id: \.self){ _ in
                        TweetsRowView()
                            .padding()
                        
                    }
                    
                }
            }
            Button{
                showNewTweetView.toggle()
            } label : {
                Image(systemName: "plus")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 20, height: 20)
                    .padding()
            }
            .background(Color(.systemBlue)).foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                Text("New tweet veiew")
            }
            
            
        }
    }
    
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
