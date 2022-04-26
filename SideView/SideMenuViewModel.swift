//
//  SideMenuViewModel.swift
//  SideView
//
//  Created by Sarika on 02.03.22.
//

import Foundation
import IOSurface

enum SideMenuViewModel : Int , CaseIterable {
    case profile
    case lists
    case bookmarks
    case messages
    case notifications
    case logout
    
    var title: String {
        switch self{
            
        case .profile:
             return "profile"
        case .lists:
            return "list"
        case .bookmarks:
            return "bookmarks"
        case .messages:
            return "messages"
        case .notifications:
            return "notifications"
        case .logout:
            return "logout"
        }
    }
    
    var imageName : String {
        switch self {
            
        case .profile :
            return "person"
        case .lists :
            return "list.bullet"
        case .bookmarks :
            return "bookmark"
        case .messages :
            return "bubble.left"
        case .notifications :
            return "bell"
        case .logout :
            return "arrow.left.square"
            
        }
    }
    
    
}
