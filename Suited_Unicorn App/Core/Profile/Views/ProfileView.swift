//
//  ProfileView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 6/26/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            headerView
            
            actionButtons
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView{
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Button{
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x : 16, y : 12)
                    
                }
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x:16 , y: 24)
            }
            
        }
        .frame(height:96)
        
    }
    var actionButtons: some View{
        HStack(spacing : 12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
}