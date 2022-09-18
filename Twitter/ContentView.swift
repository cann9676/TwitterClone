//
//  ContentView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    //using for logical on when to show menu
    @EnvironmentObject var viewModel: AuthViewModel
    //need this variable to used across multiple views
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                // have a logged in user
                mainInterfaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var mainInterfaceView: some View {
        ZStack(alignment: .topLeading){
            MainTabView()
                .navigationBarHidden(showMenu)
                //In a ZStack the second item is placed on top
            //the logic with this is to have the Side Menu permanatly off-screen and when pressed it slides onto the visble screen area.
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25: 0.0)
                }.onTapGesture{
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0: -300, y: 0)
                .background(showMenu ? Color.white: Color.clear)
        }
        
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                    .frame(width: 32, height: 32)

                }
            }
        }
        .onAppear{
            showMenu = false
            //once the menu item appears the menu disappears
        }
    }
}
