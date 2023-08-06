//
//  UserService.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 8/6/23.
//
//
import Firebase
import FirebaseFirestoreSwift

struct UserService {

    func fetchUser(with uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }

                guard let user = try? snapshot.data(as: User.self) else { return }
                print("DEBUG: User name is \(user.username)")
                print("DEBUG: Email is \(user.email)")

            }
    }
}

//
//struct Something<T: Decodable> {
//
//    func item(from data: Data) -> T?  {
//        try? JSONDecoder().decode(T.self, from: data)
//    }
//
//    func getter() -> T {
//        let value = ...
//
//        if let data = value as? Data
//            return item(from: data) ?? defaultvalue
//        }
//
//        return defaultvalue
//    }
//}
