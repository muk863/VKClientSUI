//
//  GroupModel.swift
//  VKClientSUI
//
//  Created by username on 08.12.2021.
//

import Foundation

struct Groups: Codable {
    let response: GroupResponse
}

struct GroupResponse: Codable {
    let count: Int
    let items: [GroupItem]
}

class GroupItem: Codable, Identifiable {
    var id: Int = 0
    var name: String = ""
    var imageURL: String = ""
    var membersCount: Int = 0

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "photo_100"
    }
}
