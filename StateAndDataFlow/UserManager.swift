//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    @Published var isRegister = false
    @AppStorage("userName") var name = ""
    
    func resetUserReg() {
        name = ""
        isRegister = false
    }
}
