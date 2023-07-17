//
//  LoginView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/17/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        //parent container
        VStack{
            
            //header view
            VStack(alignment: .leading){
                HStack{ Spacer()}
                
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            Spacer()
            
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
