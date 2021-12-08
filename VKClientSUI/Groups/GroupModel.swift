//
//  GroupModel.swift
//  VKClientSUI
//
//  Created by username on 08.12.2021.
//

import Foundation

class Group: Identifiable {
    internal init(name: String, avatar: String) {
        self.name = name
        self.avatar = avatar
    }

    let id: UUID = UUID()
    let name: String
    let avatar: String
}
