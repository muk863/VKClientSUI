//
//  Modifier.swift
//  VKClientSUI
//
//  Created by username on 04.12.2021.
//

import SwiftUI

struct NameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.black)
            .font(.system(size: 25, weight: .bold))
    }
}

struct NameTwoText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.gray)
            .font(.system(size: 18, weight: .light))
    }
}

struct GroupText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.blue)
            .font(.largeTitle)
    }
}

struct ModifierList: ViewModifier {
    func body(content: Content) -> some View {
        content
            .listStyle(.plain)
    }
}
