//
//  FriendsView.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import SwiftUI

struct FriendsView: View {
    @ObservedObject var viewModel: FriendViewModel
    
    init(viewModel: FriendViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink(destination: FriendPageView(friend: friend)) {
                FriendRowView(friend: friend)
            }
        }
        .modifier(ModifierList())
        .onAppear { viewModel.fetch() }
    }
}
