//
//  LoginView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 9/8/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        //parent container
        VStack {
            //header view
            VStack(alignment: .leading) {
            //    HStack { Spacer() }
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(width: UIScreen.main.bounds.width, height: 260)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
