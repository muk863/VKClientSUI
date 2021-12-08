//
//  FriendModel.swift
//  VKClientSUI
//
//  Created by username on 08.12.2021.
//

import Foundation

class Friend: Identifiable {
    internal init(name: String, surname: String, avatar: String) {
        self.name = name
        self.surname = surname
        self.avatar = avatar
    }
    
    let id: UUID = UUID()
    let name: String
    let surname: String
    let avatar: String
}
