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
        print("DEBUG: Register with email \(email)")
    }
}
