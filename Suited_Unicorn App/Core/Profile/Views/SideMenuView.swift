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
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ option in
                HStack{
                    Image(systemName: option.imageName)
                        .font(.headline).foregroundColor(.gray)
                    
                    Text(option.title).font(.subheadline)
                    // takes to the left side of the screen
                    Spacer()
                    
                }
                .frame(height: 40 )
                .padding(.horizontal)
                
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
