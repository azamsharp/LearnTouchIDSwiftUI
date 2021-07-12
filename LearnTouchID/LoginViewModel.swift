//
//  LoginViewModel.swift
//  LearnTouchID
//
//  Created by Mohammad Azam on 7/4/21.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var isAuthenticated: Bool = false
    
    func login(_ username: String, _ password: String) {
            
    }
    
    func loginUsingTouchId() {
        
        AuthenticationService().authenticateUsingTouchId { (success, error) in
            if success {
                self.isAuthenticated = true 
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
        
    }
    
}
