//
//  SplashScreenView.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 7/13/23.
//

import SwiftUI



struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}


import SwiftUI

struct SplashScreenView: View {
    @State private var isActive: Bool = false

    var body: some View {
        VStack {
            if isActive {
                ContentView()
            } else {
                ZStack {
                                    Color(#colorLiteral(red: 0.8784313725, green: 0.737254902, blue: 0.9529411765, alpha: 1))
                                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                                            Spacer(minLength: 50)
                                            Image("SU Logo")
                                                .resizable()
                                                .frame(width:100, height:100)
                                                .aspectRatio(contentMode: .fit)
                                            Spacer()
                                        }
                                    
                                }
            }
        }
        .transition(.move(edge: .bottom)) // Add a transition
                .animation(.easeOut(duration: 1.0)) // Animate the transition
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
