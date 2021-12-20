//
//  LikeButton.swift
//  VKClientSUI
//
//  Created by username on 17.12.2021.
//

import Foundation
import SwiftUI

struct LikeButton : View {
    @State private var isLiked = false
    @State private var likesCount: Int = 17
    
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "hand.thumbsup.fill")
                    .opacity(isLiked ? 1 : 0)
                    .scaleEffect(isLiked ? 1.0 : 0.0)
                    .animation(.easeIn(duration: 0.15))
                Image(systemName: "hand.thumbsup")
            }.foregroundColor(isLiked ? .blue : .gray)
            
            Text("\(likesCount)")
                .transition(.opacity.animation(.easeInOut(duration: 0.35)))
                .id(UUID())
        }
        .font(.system(size: 18))
        .onTapGesture {
            isLiked.toggle()
            likesCount += isLiked ? 1 : -1
        }
    }
}
