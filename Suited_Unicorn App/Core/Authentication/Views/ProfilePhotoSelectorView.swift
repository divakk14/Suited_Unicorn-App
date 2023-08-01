//
//  ProfilePhotoSelectorView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/30/23.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage : UIImage?
    @State private var profileImage: Image?
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Setup account",
                           title2: "Add a profile picture")
            
            Button{
                showImagePicker.toggle()
                
            }label:{
                Image("photo_plus")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(.top, 44)
                
            }
            .sheet(isPresented: $showImagePicker){
                ImagePicker(selectedImage: $selectedImage)
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
