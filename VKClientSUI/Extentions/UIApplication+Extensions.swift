//
//  UIApplication+Extensions.swift
//  VKClientSUI
//
//  Created by username on 07.12.2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
