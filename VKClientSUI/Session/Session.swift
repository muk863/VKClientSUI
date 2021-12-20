//
//  Session.swift
//  VKClientSUI
//
//  Created by username on 13.12.2021.
//

import SwiftUI

class Session: ObservableObject {
    
    static let instance = Session()
    
    private init() {}
    
    @Published var isAuthorized: Bool = false
    @Published var userId: String = ""
    @Published var token: String = ""
    @Published var cliendId = "8026092"
    @Published var version = "5.130"
}
