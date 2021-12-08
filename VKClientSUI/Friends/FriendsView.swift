//
//  FriendsView.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import SwiftUI

struct FriendsView: View {
    private var friends: [Friend] = [
        Friend(name: "Михаил", surname: "Кобзарь", avatar: "cat")
    ]
    
    var body: some View {
        List(friends) { friend in
            NavigationLink(destination: FriendPhotoView(friend: friend)) {
                FriendRowView(friend: friend)
            }
        }
        .modifier(ModifierList())
        .navigationBarTitle("Friends", displayMode: .inline)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
