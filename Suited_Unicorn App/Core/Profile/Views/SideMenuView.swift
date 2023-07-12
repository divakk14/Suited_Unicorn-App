//
//  SideMenuView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 7/12/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 32){
            VStack(alignment: .leading){
                Circle().frame(width: 48 , height: 49)
                VStack(alignment: .leading, spacing: 5){
                    Text("Bruce Wayne").font(.headline).frame(height: 20)
                    Text("@batman").font(.caption).foregroundColor(.gray)
                    
                }
                
                UserStatsView()
                    .padding(.vertical)
                
     
            }
            .padding(.leading)
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ viewModel in
                if viewModel == .profile{
                    NavigationLink{
                        ProfileView()
                    }label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }else if viewModel == .logout{
                    
                }else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
                
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

