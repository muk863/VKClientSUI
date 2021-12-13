//
//  TabBar.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{

            FriendsView(viewModel: FriendViewModel(FriendAPI()))
                .navigationBarTitle("", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Friends")
                }
            GroupsView(viewModel: GroupViewModel(GroupAPI()))
                .navigationBarTitle("", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Groups")
                }
            
            NewsView()
                .tabItem {
                    Image(systemName: "ellipsis.bubble")
                    Text("News")
                }
        }
        
    }
}
