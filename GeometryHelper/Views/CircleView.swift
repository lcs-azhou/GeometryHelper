//
//  CircleView.swift
//  GeometryHelper
//
//  Created by Ansheng Zhou on 2023-11-16.
//

import SwiftUI

struct CircleView: View {
    
//    mark:stored properties
    @State var currentCircle = Circle(radius: 10.0)
    
//    mark:computed properties
    var body: some View {
        VStack {
            Text("\(currentCircle.radius)")
                .font(.largeTitle)
            Slider(value: $currentCircle.radius, in: 0...100)
        }.padding()
        
    }
    
}

#Preview {
    CircleView()
}
