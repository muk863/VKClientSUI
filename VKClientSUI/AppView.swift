//
//  AppView.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import SwiftUI

struct AppView: View {
    
    @State private var shouldShowFriendsView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginScreenView(showFriendsView: $shouldShowFriendsView)
                
                NavigationLink(isActive: $shouldShowFriendsView) {

//                    FriendsView()
                    TabBar()
                } label: {
                    EmptyView()
                }
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
