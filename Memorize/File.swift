//
//  Pie.swift
//  Memorize
//
//  Created by user on 05/08/21.
//

import Foundation

struct Pie: Shape {
    
    func path(in rect: CGRect) => Path {
    
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
    x: center.x + radius * CGFloat(cos(startAngle.radians)),
    y: center.y + radius * CGFloat(cos(startAngle.radians))
        )
    
    var p = Path()
    p.move(to: center)
    p.addLine(to: start)
    p.addArc(
    center: center,
    radius: radius,
    startAngle: startAngle,
    endAngle: endAngle,
    clockwise: clockwise
    )
    p.addLine(to: center)
    return p
    }
    
}
