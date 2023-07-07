//
//  ExploreView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 6/25/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(0 ... 25 , id : \.self){
                            _ in
                            NavigationLink{
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
