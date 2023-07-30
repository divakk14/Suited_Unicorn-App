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
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if let error = error{
                print("DEBUG : failed to register with error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
            
            print("DEBUG : Registered user successfully")
            print("DEBUG: User is \(self.userSession)")
            
        }
        
    }
}
