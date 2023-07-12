//
//  UserStatsView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 7/12/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                Text("800").font(.subheadline).bold()
                
                Text("Following").font(.caption)
                    .foregroundColor(.gray)
                
            }
            
            HStack(spacing: 4){
                Text("6.9M").font(.subheadline).bold().foregroundColor(.black)
                
                Text("Followers").font(.caption)
                    .foregroundColor(.gray)
                
            }

            
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
