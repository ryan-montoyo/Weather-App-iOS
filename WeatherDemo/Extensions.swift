//
//  Extensions.swift
//  WeatherDemo
//
//  Created by Ryan Montoyo on 6/15/24.
//

import Foundation
import SwiftUI

extension Double{
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}

extension Double {
    func toFahrenheit() -> Double {
        let fahrenheitValue = (self * 9/5) + 32
        return Double(fahrenheitValue)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
