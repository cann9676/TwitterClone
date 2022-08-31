//
//  NewTweetView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/30/22.
//

import SwiftUI

struct NewTweetView: View {
    var body: some View {
        VStack {
            HStack{
                Button {
                    print("Dismiss")
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack {
                Circle()
                    .frame(width: 64, height: 64)
                
            }
            
        }
    }
}
    

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
