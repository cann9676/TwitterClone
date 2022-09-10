//
//  RegistrationView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 9/8/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    var body: some View {
        VStack {
        AuthHeaderView(title1: "Get Started", title2: "Create your account")
        
            VStack(spacing: 40) {
            CustomInputField(imageName: "envelope",
                             placeHolderText: "Email",
                             text: $email)
              
              CustomInputField(imageName: "person",
                               placeHolderText: "Username",
                               text: $username)
            CustomInputField(imageName: "person",
                             placeHolderText: "Full name",
                             text: $fullname)
              
              CustomInputField(imageName: "lock",
                               placeHolderText: "Password",
                               text: $password)
        }
        .padding(32)
            
            Button {
                print("Sign up here...")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
        
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
