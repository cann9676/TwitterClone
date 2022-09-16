//
//  TwitterApp.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/9/22.
//

import SwiftUI
import Firebase

@main
struct TwitterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoginView()
            }
        }
    }
}
