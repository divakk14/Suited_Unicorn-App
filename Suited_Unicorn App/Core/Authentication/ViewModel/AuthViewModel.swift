//
//  AuthViewModel.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/28/23.
//

//import Foundation
import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    func login(withEmail email: String, password : String){
        print("DEBUG: Log in with email \(email)")
    }
    func register(withEmail email: String, password: String, fullname: String, username: String ){
        print("DEBUG: Register with email \(email)")
    }
}
