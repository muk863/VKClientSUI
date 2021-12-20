//
//  Builder.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI
import Kingfisher

struct AvatarImage: View {
    @State private var scaleFactor = 1.0
    var content: KFImage

    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
    }

    var body: some View {
        content
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 110, height: 110)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
            .scaleEffect(scaleFactor)
            .animation(.spring(response: 0.2, dampingFraction: 0.35, blendDuration: 0.25))
            .onTouchGesture(
                touchBegan: { withAnimation { self.scaleFactor = 0.85 } },
                touchEnd: { _ in withAnimation { self.scaleFactor = 1.0 } }
            )
            .padding()
    }
}
