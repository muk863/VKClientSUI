//
//  FriendPageView.swift
//  VKClientSUI
//
//  Created by username on 08.12.2021.
//

import SwiftUI
import Kingfisher

struct FriendPageView: View {
    var friend: FriendItem
    var body: some View {
        VStack {
            AvatarImage {
                KFImage(URL(string: friend.photo100!)!)
            }
                        
            Spacer()
            VStack(alignment: .leading) {
                Spacer().frame(height: 50.0)
                
                LikeButton()
                
                Text(friend.firstName).modifier(NameText())
                Text(friend.lastName).modifier(NameTwoText())
                
                Spacer()
            }
            Spacer()
        }.padding()
    }
}
