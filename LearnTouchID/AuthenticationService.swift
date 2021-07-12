//
//  AuthenticationService.swift
//  LearnTouchID
//
//  Created by Mohammad Azam on 7/4/21.
//

import Foundation
import LocalAuthentication

class AuthenticationService {
    
    func authenticateUsingTouchId(completion: @escaping (Bool, Error?) -> Void) {
        
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            let reason = "TouchId authentication is required!"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { (success, error) in
                
                DispatchQueue.main.async {
                    completion(success, error)
                }
                
            }
            
        }
        
    }
    
}
