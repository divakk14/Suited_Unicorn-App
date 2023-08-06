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
    @Published var didAuthenticateUser = false
    @Published var currentUser: User?
    private var tempUserSession: FirebaseAuth.User?
    
    private let service = UserService()
    
    init(){
        self.userSession = Auth.auth().currentUser
        self.fetchUser()
        
    }
    
    func login(withEmail email: String, password : String){
        Auth.auth().signIn(withEmail: email, password: password){result, error in
            if let error = error{
                print("DEBUG : failed to sign in with error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
             print("DEBUG: Did log user in..")
            
        }
    }
    
    func register(withEmail email: String, password: String, fullname: String, age: String, username: String ){
        guard let ageInt = Int(age) else {
                    print("DEBUG: Age is not provided or not a valid number.")
                    return
                }
        print("Age is: \(age)")
        Auth.auth().createUser(withEmail: email, password: password){result, error in
            if let error = error{
                print("DEBUG : failed to register with error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            
            self.tempUserSession = user
            
            let data = ["email": email,
                        "username": username.lowercased(),
                        "fullname": fullname,
                        "age" : ageInt,
                        "uid":user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data){ _ in
                    self.didAuthenticateUser = true
                }
        }
        
    }
    func signOut(){
        
        userSession = nil
        //signs user out on server(backend)
        try? Auth.auth().signOut()
    }
    func uploadProfileImage (_ image: UIImage){
        guard let uid = tempUserSession?.uid else{ return }
        
        ImageUploader.uploadImage(image: image) {profileImageUrl in
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profileImageUrl": profileImageUrl]) { _ in
                    self.userSession = self.tempUserSession
                }
        }
        
    }
    func fetchUser() {
        guard let uid = self.userSession?.uid else { return }
        service.fetchUser(with: uid)

    }
    
}
