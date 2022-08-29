//
//  SideMenuView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/29/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text ("Bruce Wayne")
                    .font(.headline)
                
                Text ("@batman")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            UserStatsView()
            //made it's own reusable compontent so it can be used in multiple places throughout the app.
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
