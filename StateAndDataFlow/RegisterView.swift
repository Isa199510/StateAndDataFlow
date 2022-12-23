//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var name: String = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text(name.count.formatted())
                    .foregroundColor(name.count>=3 ? .green : .red)
                    .padding(.trailing, 20)
                    
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(name.count >= 3 ? false : true)
        }
        .onAppear {
            if !user.name.isEmpty {
                user.isRegister = true
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
