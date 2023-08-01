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
                if let profileImage = profileImage{
                    profileImage
                        .modifier(ProfileImageModifier())
                } else {
                    Image("photo_plus")
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                }
            }
            .sheet(isPresented: $showImagePicker){
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            Spacer()
        }
        .ignoresSafeArea()
    }
    func loadImage (){
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

private struct ProfileImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemBlue))
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
