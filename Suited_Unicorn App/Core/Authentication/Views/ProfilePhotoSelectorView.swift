//
//  ProfilePhotoSelectorView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/30/23.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Create your account",
                           title2: "Add a profile picture")
            
            Button{
                print("Select the picture from here..")
            }label:{
                Image("photo_plus")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(.top, 44)
                
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
