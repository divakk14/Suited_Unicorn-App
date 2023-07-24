//
//  CustominputField.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/24/23.
//

import SwiftUI

struct CustominputField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                TextField(placeholderText, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustominputField_Previews: PreviewProvider {
    static var previews: some View {
        CustominputField(imageName: "envelope",
                         placeholderText: "Email",
                         text: .constant(""))
    }
}
