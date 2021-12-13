//
//  FriendModel.swift
//  VKClientSUI
//
//  Created by username on 08.12.2021.
//

import Foundation

struct Friends: Codable {
    let response: FriendResponse
}

struct FriendResponse: Codable {
    let count: Int
    let items: [FriendItem]
}

struct FriendItem: Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let photo100: String?

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case id
        case lastName = "last_name"
        case photo100 = "photo_100"
    }
}

