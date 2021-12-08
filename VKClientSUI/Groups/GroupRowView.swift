//
//  GroupRowView.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI

struct GroupRowView: View {
    var group: Group
    var body: some View {
        HStack {
            AvatarImage {
                Image(group.avatar)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text(group.name).modifier(GroupText())
            }
            Spacer()
        }
//        .border(Color.blue, width: 1)
    }
}
