//
//  ProfileView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/18/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectionFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    //First step to enable back button functionality
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            //Using an extension and variable to avoid crowding this section
            actionButton
            //action Button elements
            userInfoDetails
            //User info elements
            tweetFilterBar
            //Filter Bar elements
            tweetsView
            //Tweets
           
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
                    mode.wrappedValue.dismiss()
                    //enables back button functionality
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
    } //end of headerView
    
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
    }  //end of actionButton
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Heath Ledger")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))

            }
            
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your mom's favorite villain")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mapping.and.ellipse")
                    Text("Gotham, NY")
                }
                
                HStack {
                    Image(systemName: "link")
                    Text("www.thejoker.com")
                }
                
            } //location and link view
            .font(.caption)
            .foregroundColor(.gray)
            //putting the attributes at the bottom affects the the HStack above.
            UserStatsView()
            .padding(.vertical)
        }
        .padding(.horizontal)
    } // end of userInfoDetails
       
    var tweetFilterBar: some View {
        HStack {
        ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
            VStack {
                Text(item.title)
                    .font(.subheadline)
                    .fontWeight(selectionFilter == item ? .semibold: .regular)
                //the selected font weight is bold
                    .foregroundColor(selectionFilter == item ? .black : .gray)
                
                if selectionFilter == item {
                    Capsule()
                        .foregroundColor(Color(.systemBlue))
                        .frame(height: 3)
                        .matchedGeometryEffect(id: "filter", in: animation)
                        //matchedGeometryEffect smooths the animation and creates the sliding effect.
                } else {
                    Capsule()
                    .foregroundColor(Color(.clear))
                    .frame(height: 3)
            }
        }
            .onTapGesture {
                withAnimation(.easeInOut) {
                    self.selectionFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    } //end of tweetFilterBar
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetsRowView()
                        .padding()
                }
            }
        }
    }// end of tweetsView
    
}
//Just need one extension and can add multiple variables under it.

