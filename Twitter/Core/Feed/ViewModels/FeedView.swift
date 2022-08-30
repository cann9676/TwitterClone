//
//  FeedView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/12/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach (0 ... 20, id: \.self) { _ in
                       TweetsRowView()
                            .padding()
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
