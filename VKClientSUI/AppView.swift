//
//  AppView.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import SwiftUI

struct AppView: View {
    
    @ObservedObject var session = Session.instance
    
    var body: some View {
        NavigationView {
            HStack {
                VKLoginWebView()
                NavigationLink(destination: TabBar(),
                               isActive: $session.isAuthorized)
                {
                    EmptyView()
                    
                }
            }
        }
    }
}
