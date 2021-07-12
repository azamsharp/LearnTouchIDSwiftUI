//
//  LoginScreen.swift
//  LearnTouchID
//
//  Created by Mohammad Azam on 7/4/21.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @StateObject private var loginVM = LoginViewModel()
    
    @State private var isTouchIdValid: Bool = false
    
    var body: some View {
        NavigationView {
            
            Form {
                
                NavigationLink(
                    destination: AccountBalanceScreen(),
                    isActive: $isTouchIdValid,
                    label: {
                        EmptyView()
                    }).opacity(0)
                
                TextField("User name", text: $username)
                TextField("Password", text: $password)
                HStack {
                    Spacer()
                    Button("Login") {
                       
                    }
                    Spacer()
                    
                    TouchIDButton(isValid: $isTouchIdValid)
                    
                }
            }
            .navigationTitle("Login")
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
