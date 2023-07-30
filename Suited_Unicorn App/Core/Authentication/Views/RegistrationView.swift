//
//  RegistrationView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/17/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var age = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Get Started", title2: "Create Your Account.")
            
            VStack(spacing: 40){
                CustominputField(imageName: "person",
                                 placeholderText: "Fullname",
                                 text: $fullname)
                CustominputField(imageName: "person",
                                 placeholderText: "Username",
                                 text: $username)
                CustominputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $email)
                CustominputField(imageName: "lock",
                                 placeholderText: "Password",
                                 text: $password)
            }
            .padding(32)
            
            Button{
                viewModel.register(withEmail: fullname,
                                   password: username,
                                   fullname: email,
                                   username: password)
            }label:{
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5),radius: 10, x:0, y:0)
            
            Spacer()
            
            Button{
                
                presentationMode.wrappedValue.dismiss()
                
            }label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.body)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
//            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
