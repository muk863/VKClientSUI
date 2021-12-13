//
//  GroupRowView.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI
import Kingfisher

struct GroupRowView: View {
    var group: GroupItem
    var body: some View {
        HStack {
            AvatarImage {
                KFImage(URL(string: group.imageURL)!)
            }
            
            VStack(alignment: .leading) {
                Text(group.name)
                    .modifier(GroupText())
                    .lineLimit(1)

            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}

