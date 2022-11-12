//
//  Extensions.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 08/06/22.
//

import Foundation
import SwiftUI

extension View
{
    func cornerRadius( radius: CGFloat, corners: UIRectCorner) -> some View{
        clipShape(RoundedCorner(radius: radius, corners : corners))
    }
}

struct RoundedCorner: Shape
{
    var radius: CGFloat = .infinity
    var corners :UIRectCorner = .allCorners
    
    func path(in rect : CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
