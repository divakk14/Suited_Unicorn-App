//
//  SideMenuViewModel.swift
//  Suited_Unicorn App
//
//  Created by Divak Maheshwari on 7/7/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable{
    case profile
    case lists
    case bookmarks
    case logout
    
    var description: String{
        switch self{
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .bookmarks: return "Bookmarks"
        case .logout: return "Lougout"
        }
    }
    var imageName: String{
        switch self{
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }

        
    }
    
}
