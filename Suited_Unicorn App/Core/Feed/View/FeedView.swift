//
//  FeedView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 6/24/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id: \.self){ _ in
                    TweetsRowView()
                        .padding()
                    
                }
                
            }
        }
    }
    
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
