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
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Setup account",
                           title2: "Add a profile picture")
            Button{
                showImagePicker.toggle()
            }label:{
                if let profileImage = profileImage{
                    profileImage
                        .resizable()
                        .modifier(ProfileImageModifier())
                } else {
                    Image("photo_plus")
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                }
            }
            .sheet(isPresented: $showImagePicker,
                   onDismiss: loadImage){
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            
            if let selectedImage = selectedImage {
                Button {
                    viewModel.uploadProfileImage(selectedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5),radius: 10, x:0, y:0)
                
            }
            
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
            .frame(width: 180, height: 180)
            .clipShape(Circle())
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
