//
//  FriendAPI.swift
//  VKClientSUI
//
//  Created by username on 13.12.2021.
//

import SwiftUI
import Alamofire

protocol FriendService {
    func get (_ completion: @escaping (Friends?) -> ())
}

class FriendAPI: FriendService {
    @ObservedObject var session = Session.instance
    
    let baseUrl = "https://api.vk.com/method"
    var params: Parameters = [:]
    var request: String?
    
    func get(_ completion: @escaping (Friends?) -> ()) {
        let method = "/friends.get"
        let url = baseUrl + method
        
        self.params = [
            "client_id": session.cliendId,
            "user_id": session.userId,
            "access_token": session.token,
            "v": session.version,
        ]
        
        params["extended"] = "1"
        params["fields"] = "photo_100"
        
        AF.request(url, method: .get, parameters: params).responseData{ response in
            self.request = response.request?.description
            
            guard let data = response.data else { return }
            
            do {
                var friends: Friends
                friends = try JSONDecoder().decode(Friends.self, from: data)
                completion(friends)
            } catch {
                print(error)
            }
        }
    }
}
