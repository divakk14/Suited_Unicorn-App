//
//  ExploreViewModel.swift
//  Suited_Unicorn App
//
//  Created by Haris Adnan on 8/6/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users  = [User]()
    let service = UserService()
    init(){
        fetchUsers()
    }
    func fetchUsers(){
        service.fetchUsers{
            users in
            self.users = users
            print("Debug : Users \(users)")
            
        }
    }
}
