//
//  UserCellView.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI

struct UserCellView: View {
    
    var body: some View {
        
        HStack {
            AvatarImage {
                Image("cat")
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Михаил").modifier(NameText())
                Text("Кобзарь").modifier(NameTwoText())
            }
            Spacer()
        }
        .border(Color.gray, width: 1)
    }
}



struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}

