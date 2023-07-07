//
//  SideMenuView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/7/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            Circle()
                .frame( width: 48, height: 48)
            
            VStack(alignment: .leading , spacing: 4){
                Text("Divak")
                    .font(.headline)
                
                Text("@dboy")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
