//
//  Circular.swift
//  ProgressbarSwiftUI
//
//  Created by Emir Türk on 11.04.2023.
//

import SwiftUI

struct Circular: View {
   
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregrounColor : Color
    let percentage : Double
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregrounColor)
                
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/2)
        }
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10, backgroundColor: .blue, foregrounColor: .yellow, percentage: 60)
    }
}
