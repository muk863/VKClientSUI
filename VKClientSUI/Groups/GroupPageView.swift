//
//  GroupPageView.swift
//  VKClientSUI
//
//  Created by username on 13.12.2021.
//

import SwiftUI
import Kingfisher

struct GroupPageView: View {
    var group: GroupItem
    var body: some View {
        ScrollView {
            
            AvatarImage {
                KFImage(URL(string: group.imageURL)!)
            }
            
            Text(group.name).modifier(GroupText())
            Spacer()
        }.padding()
    }
}
