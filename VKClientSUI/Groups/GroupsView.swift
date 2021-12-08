//
//  GroupsView.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import SwiftUI

struct GroupsView: View {
    private var groups: [Group] = [
    Group(name: "Cats", avatar: "cats")
    ]
    
    var body: some View {
        List(groups) { group in
                GroupRowView(group: group)
        }
            .modifier(ModifierList())
            .navigationBarHidden(false)
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
