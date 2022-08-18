//
//  ProfileView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/18/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            headerView
            //Using an extension and variable to avoid crowding this section
            
            actionButton
            
            VStack {
                
            }
            
            Spacer()
        //The spacer pushes it to the top
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            //Whenever things are stacked on top of each other use a ZStack
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                } //Back button

                
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
            
        } //Header
        .frame(height: 96)
    }
    
    var actionButton: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            //When getting a editor placeholder error, just command + shift + b to rebuild. Should go away.
            
            Button  {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
            .padding(.trailing)
        }
    }
}
//Just need one extension and can add multiple variables under it.

