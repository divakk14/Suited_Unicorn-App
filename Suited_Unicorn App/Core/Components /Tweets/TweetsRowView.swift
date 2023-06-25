//
//  TweetsRowView.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 6/24/23.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemCyan))
            }
        }
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
