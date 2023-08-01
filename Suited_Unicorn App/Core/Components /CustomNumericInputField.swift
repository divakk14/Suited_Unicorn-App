//
//  CustomNumericInputField.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 8/1/23.
//

import SwiftUI


struct CustomNumericInputField: View {
    var imageName: String
    var placeholderText: String
    @Binding var value: Int?

    var body: some View {
        VStack{
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                TextField(placeholderText, value: $value, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}



struct CustomNumericInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomNumericInputField(imageName: "person",
                                placeholderText: "Age",
                                value: .constant(30))
    }
}
