//
//  ViewTweetView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 7/13/23.
//

import SwiftUI

struct ViewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()                } label:{
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                
                    Button{
                        print("Tweet")
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
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea("Whats on your mind?", text: $caption)
                
            }
            .padding()
        }
    }
}

struct ViewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        ViewTweetView()
    }
}
