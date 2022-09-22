//
//  AuthViewModel.swift
//  Twitter
//
//  Created by Chelsea Hannah on 9/17/22.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        //log user in
        print("DEBUG: Login with email\(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        // sign user up
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
        }
    }
}
