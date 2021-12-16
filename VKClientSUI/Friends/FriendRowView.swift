//
//  FriendRowView.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI
import Kingfisher

struct FriendRowView: View {
    var friend: FriendItem
    
    var body: some View {
        HStack {
            AvatarImage {
                KFImage(URL(string: friend.photo100!)!)
            }
            
            VStack(alignment: .leading) {
                Text(friend.firstName).modifier(NameText())
                Text(friend.lastName).modifier(NameTwoText())
            }
            Spacer()
        }
    }
}

