//
//  Builder.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI
import Kingfisher

struct AvatarImage: View {
    var content: KFImage
 
    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
    }
 
    var body: some View {
        content
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
            .padding()
    }
}
