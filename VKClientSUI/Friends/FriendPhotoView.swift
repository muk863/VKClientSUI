//
//  FriendPhotoView.swift
//  VKClientSUI
//
//  Created by username on 08.12.2021.
//

import SwiftUI

struct FriendPhotoView: View {
    var friend: Friend
    var body: some View {
        Image(friend.avatar)
    }
}

