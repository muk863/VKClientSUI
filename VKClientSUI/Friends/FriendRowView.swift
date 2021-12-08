//
//  FriendRowView.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI

struct FriendRowView: View {
    var friend: Friend
    
    var body: some View {
        
        HStack {
            AvatarImage {
                Image(friend.avatar)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text(friend.name).modifier(NameText())
                Text(friend.surname).modifier(NameTwoText())
            }
            Spacer()
        }
//        .border(Color.gray, width: 1)
    }
}


