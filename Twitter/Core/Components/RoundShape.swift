//
//  RoundShape.swift
//  Twitter
//
//  Created by Chelsea Hannah on 9/8/22.
//

import SwiftUI

struct RoundShape: Shape {
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
    
        return Path(path.cgPath)
    }
}
