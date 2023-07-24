//
//  RegistrationView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/17/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Get Started", title2: "Create Your Account.")
            
            VStack{
                CustominputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $password)
                CustominputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $password)
                CustominputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $password)
                CustominputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $password)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
