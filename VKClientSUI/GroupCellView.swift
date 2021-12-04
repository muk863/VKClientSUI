//
//  GroupCellView.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI

struct GroupCellView: View {
    
    var body: some View {
        
        HStack {
            AvatarImage {
                Image("cats")
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Cats").modifier(GroupText())
            }
            Spacer()
        }
        .border(Color.blue, width: 1)
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellView()
    }
}
